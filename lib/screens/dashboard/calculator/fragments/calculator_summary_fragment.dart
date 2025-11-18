import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kubirovacka_one/components/heading_1.dart';
import 'package:kubirovacka_one/components/heading_2.dart';
import 'package:kubirovacka_one/enums/wood_log_type.dart';
import 'package:kubirovacka_one/keys.dart';
import 'package:kubirovacka_one/screens/dashboard/calculator/bloc/calculator_bloc.dart';
import 'package:kubirovacka_one/screens/dashboard/calculator/bloc/calculator_state.dart';

class CalculatorSummaryFragment extends StatefulWidget {
  const CalculatorSummaryFragment({super.key});

  @override
  CalculatorSummaryFragmentState createState() => CalculatorSummaryFragmentState();
}

class CalculatorSummaryFragmentState extends State<CalculatorSummaryFragment> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorBloc, CalculatorState>(
      builder: (context, state) {
        if (state is! CalculatorListOpenState) {
          return Container();
        }

        final classicLogs = state.currentListLogs!
            .where((element) =>
                element.woodLogType == WoodLogType.log ||
                element.woodLogType == WoodLogType.logWithoutBark ||
                element.woodLogType == WoodLogType.logUpRight)
            .toList();
        final raws = state.currentListLogs!.where((element) => element.woodLogType == WoodLogType.raw).toList();

        final classicLogsCount = classicLogs.length;
        final classicLogsRzsCount = classicLogs.where((element) => element.isRhizome).length;
        final classicLogsVolume = classicLogs.map((e) => e.volume).fold(0.0, (value, element) => value + num.parse(element.toStringAsFixed(2)));
        final rawsCount = raws.length;
        final rawsRzsCount = raws.where((element) => element.isRhizome).length;
        final rawsVolume = raws.map((e) => e.volume).fold(0.0, (value, element) => value + num.parse(element.toStringAsFixed(2)));
        final totalCount = state.currentListLogs!.length;
        final totalRzsCount = state.currentListLogs!.where((element) => element.isRhizome).length;
        final totalVolume = state.currentListLogs!.map((e) => e.volume).fold(0.0, (value, element) => value + num.parse(element.toStringAsFixed(2)));
        final averageVolume = totalVolume / totalCount;
        final averageVolumePerTree = totalRzsCount == 0 ? 0 : totalVolume / (totalRzsCount);


        return SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Heading1('Sumář'),
              const SizedBox(
                height: 10,
              ),
              const Heading2('Kulatiny'),
              const SizedBox(
                height: 10,
              ),
              Text(key: const Key(calculatorSummaryFragmentTextLogsCountKey), 'Množství: $classicLogsCount ks'),
              Text(key: const Key(calculatorSummaryFragmentTextLogsRzsCountKey), 'Počet oddenků: $classicLogsRzsCount ks'),
              Text(key: const Key(calculatorSummaryFragmentTextLogsVolumeKey), 'Objem: ${classicLogsVolume.toStringAsFixed(2)} m³'),
              const SizedBox(
                height: 30,
              ),
              const Heading2('Suráky'),
              Text(key: const Key(calculatorSummaryFragmentTextRawsCountKey), 'Množství: $rawsCount ks'),
              Text(key: const Key(calculatorSummaryFragmentTextRawsRzsCountKey), 'Počet oddenků: $rawsRzsCount ks'),
              Text(key: const Key(calculatorSummaryFragmentTextRawsVolumeKey), 'Objem: ${rawsVolume.toStringAsFixed(2)} m³'),
              const SizedBox(
                height: 30,
              ),
              const Heading2('Celkem'),
              Text(key: const Key(calculatorSummaryFragmentTextTotalCountKey), 'Množství: $totalCount ks'),
              Text(key: const Key(calculatorSummaryFragmentTextTotalRzsCountKey), 'Počet oddenků: $totalRzsCount ks'),
              Text(key: const Key(calculatorSummaryFragmentTextTotalVolumeKey), 'Objem: ${totalVolume.toStringAsFixed(2)} m³'),
              Text(key: const Key(calculatorSummaryFragmentTextTotalAverageVolumeKey), 'Prům hm. ks.: ${averageVolume.toStringAsFixed(3)} m³'),
              Text(key: const Key(calculatorSummaryFragmentTextTotalAverageVolumePerTreeKey), 'Prům hm. stromu: ${averageVolumePerTree.toStringAsFixed(3)} m³'),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        );
      },
    );
  }
}
