import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:get_it/get_it.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';
import 'package:kubirovacka_one/components/heading_1.dart';
import 'package:kubirovacka_one/components/heading_2.dart';
import 'package:kubirovacka_one/components/premium_dialog.dart';
import 'package:kubirovacka_one/components/statistics_graph/statistics_chart.dart';
import 'package:kubirovacka_one/components/statistics_graph/statistics_filter.dart';
import 'package:kubirovacka_one/services/auth_service.dart';
import 'package:kubirovacka_one/colors.dart';

import 'bloc/stats_bloc.dart';
import 'bloc/stats_event.dart';
import 'bloc/stats_state.dart';

final getIt = GetIt.instance;
final authService = getIt.get<AuthService>();

class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  StatsScreenState createState() => StatsScreenState();
}

class StatsScreenState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {
    final isPremium = authService.isPremium();

    return BlocProvider(
      create: (context) => StatsBloc()..add(const LoadStatsEvent()),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          title: const Text('Statistiky'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => context.pop(),
          ),
        ),
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Heading1('Vaše statistiky'),
                const SizedBox(height: 20),
                BlocBuilder<StatsBloc, StatsState>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        StatisticsFilter(
                          selected: state.selectedInterval,
                          onChanged: (interval) {
                            if (!isPremium && interval != StatsInterval.day) {
                              showDialog(context: context, builder: (_) => const PremiumDialog());
                            } else {
                              BlocProvider.of<StatsBloc>(context).add(StatsIntervalChangedEvent(interval));
                            }
                          },
                        ),
                        Builder(builder: (context) {
                          if (state is StatsInitialState || state is StatsLoadingState) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 24.0),
                              child: const Center(child: CircularProgressIndicator()),
                            );
                          }
                          if (state is StatsOfflineState) {
                            return _buildOfflineView(context);
                          }
                          if (state is StatsErrorState) {
                            return Center(child: Text(state.message));
                          }
                          if (state is StatsLoadedState) {
                            return _buildContent(context, state, isPremium);
                          }
                          return const SizedBox.shrink();
                        })
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOfflineView(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.wifi_off, size: 60, color: Colors.grey),
            const SizedBox(height: 16),
            const Text(
              'Statistiky vyžadují připojení k internetu.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              icon: const Icon(Icons.refresh),
              label: const Text('Zkusit znovu'),
              onPressed: () => context.read<StatsBloc>().add(const LoadStatsEvent()),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildGraph(BuildContext context, bool isPremium, StatsLoadedState state, bool isEarnings) {
    return GestureDetector(
      onTap: () {
        if (!isPremium) {
          showDialog(context: context, builder: (_) => const PremiumDialog());
        }
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          StatisticsChart(
            selectedInterval: state.selectedInterval,
            data: state.graphData.isNotEmpty ? state.graphData[isEarnings ? 1 : 0] : null,
            isEarnings: isEarnings,
          ),
          if (!isPremium)
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    color: Colors.black.withAlpha(25),
                    alignment: Alignment.center,
                    child: const Icon(Icons.lock, color: Colors.white, size: 50),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context, StatsLoadedState state, bool isPremium) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 20),
        Row(
          children: [
            _buildStatCard('${_getIntervalDisplayName(state.selectedInterval)} (Objem)', state.volume.toStringAsFixed(2), false),

            _buildStatCard('${_getIntervalDisplayName(state.selectedInterval)} (Vyděláno)', state.earnings.toStringAsFixed(0), true),
          ],
        ),
        if (state.selectedInterval != StatsInterval.day) ...[
          const SizedBox(height: 30),
          const Heading2('Objem (m³)'),
          const SizedBox(height: 10),
          _buildGraph(context, isPremium, state, false),
          const SizedBox(height: 20),
          const Heading2('Výdělek (Kč)'),
          const SizedBox(height: 10),
          _buildGraph(context, isPremium, state, true),
        ]
      ],
    );
  }

  Widget _buildStatCard(String title, String value, bool isEarnings) {
    var iconData = isEarnings ? Icons.attach_money : Icons.park_rounded;
    var color = isEarnings ? primaryColor : secondaryColor;
    var name = isEarnings ? 'Výdělek (Kč)' : 'Objem (m³)';
    // scale text size by the length of the value
    var textSize = 36.0;
    if (value.length > 4) {
      textSize = 32.0;
    }
    if (value.length > 6) {
      textSize = 28.0;
    }
    if (value.length > 8) {
      textSize = 24.0;
    }

    return Expanded(
      flex: 1,
      child: Card(
        color: Colors.white,
        elevation: 2,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Icon(iconData, color: Colors.white, size: 24),
              Text(name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(iconData, color: color, size: 28),
                  const SizedBox(width: 6),
                  Text(value, style: TextStyle(fontSize: textSize, fontWeight: FontWeight.w900)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getIntervalDisplayName(StatsInterval interval) {
    switch (interval) {
      case StatsInterval.week:
        return 'Tento týden';
      case StatsInterval.month:
        return 'Tento měsíc';
      default:
        return 'Dnes';
    }
  }
}
