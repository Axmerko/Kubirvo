import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';
import 'package:kubirovacka_one/apis/api_client.dart';
import 'package:kubirovacka_one/services/auth_service.dart';
import 'package:kubirovacka_one/components/statistics_graph/statistics_filter.dart';
import 'stats_event.dart';
import 'stats_state.dart';

final getIt = GetIt.instance;
final authService = getIt.get<AuthService>();

class StatsBloc extends Bloc<StatsEvent, StatsState> {
  final _apiClient = getIt.get<ApiClient>();
  final _connectivity = Connectivity();

  StatsBloc() : super(StatsInitialState(StatsInterval.day)) {
    on<LoadStatsEvent>(_onLoadStats);
    on<StatsIntervalChangedEvent>(_onIntervalChanged);
  }

  Future<void> _onLoadStats(LoadStatsEvent event, Emitter<StatsState> emit) async {
    if (await _isOffline()) {
      emit(StatsOfflineState(state.selectedInterval));
      return;
    }
    emit(StatsLoadingState(state.selectedInterval));
    await _fetchAndEmitDataForInterval(state.selectedInterval, emit);
  }

  Future<void> _onIntervalChanged(StatsIntervalChangedEvent event, Emitter<StatsState> emit) async {
    if (await _isOffline()) {
      emit(StatsOfflineState(event.selectedInterval));
      return;
    }

    emit(StatsLoadingState(event.selectedInterval));

    await _fetchAndEmitDataForInterval(event.selectedInterval, emit);
  }

  Future<void> _fetchAndEmitDataForInterval(StatsInterval interval, Emitter<StatsState> emit) async {
    try {
      final now = DateTime.now();
      var to = DateTime(now.year, now.month, now.day, 23, 59, 59);
      DateTime from;

      switch (interval) {
        case StatsInterval.week:
          final weekStart = now.subtract(Duration(days: now.weekday - 1));
          from = DateTime(weekStart.year, weekStart.month, weekStart.day);
          // set to to the end of the week
          to = DateTime(weekStart.year, weekStart.month, weekStart.day + 6, 23, 59, 59);
          break;
        case StatsInterval.month:
          from = DateTime(now.year, now.month, 1);
          // set to to the end of the month
          to = DateTime(now.year, now.month + 1, 1, 0, 0, 0); // last day of the month
          break;
        case StatsInterval.day:
        default:
          from = DateTime(now.year, now.month, now.day);
          break;
      }

      final requests = <Future>[
        _apiClient.api.getLogsListStatsApi().apiMainLogsListStatsPerformanceStatsGet(from: from.toUtc(), to: to.toUtc()),
        _apiClient.api.getLogsListStatsApi().apiMainLogsListStatsEarningsStatsGet(from: from.toUtc(), to: to.toUtc()),
      ];

      final shouldFetchGraph = authService.isPremium() && interval != StatsInterval.day;
      if (shouldFetchGraph) {
        final timespan = _getApiTimespan(interval);
        requests.addAll([
          _apiClient.api.getLogsListStatsApi().apiMainLogsListStatsPerformanceGraphDataGet(timespan: timespan),
          _apiClient.api.getLogsListStatsApi().apiMainLogsListStatsEarningsGraphDataGet(timespan: timespan),
        ]);
      }

      final responses = await Future.wait(requests);

      final volume = (responses[0].data as WoodLogListStatDTO).value ?? 0.0;
      final earnings = (responses[1].data as WoodLogListStatDTO).value ?? 0.0;

      List<GraphDataDto> graphData = [];
      if (shouldFetchGraph) {
        graphData.add(responses[2].data as GraphDataDto);

        // scale earning values / 100
        var earningsGraphData = (responses[3].data as GraphDataDto).rebuild((b) => b
          ..graphValuesY.replace((responses[3].data as GraphDataDto).graphValuesY!.map((f) => f / 100).toList()));

        graphData.add(earningsGraphData);
      }

      emit(StatsLoadedState(
        interval,
        volume: volume,
        earnings: earnings / 100,
        graphData: graphData,
      ));

    } catch (e) {
      emit(StatsErrorState(interval, 'Nepodařilo se načíst statistiky: $e'));
    }
  }

  Future<bool> _isOffline() async {
    final result = await _connectivity.checkConnectivity();
    return result.contains(ConnectivityResult.none);
  }

  StatsTimespan _getApiTimespan(StatsInterval interval) {
    switch (interval) {
      case StatsInterval.week:
        return StatsTimespan.thisWeek;
      case StatsInterval.month:
        return StatsTimespan.thisMonth;
      default:
        return StatsTimespan.today;
    }
  }
}