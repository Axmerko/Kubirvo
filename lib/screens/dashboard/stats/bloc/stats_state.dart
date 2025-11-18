import 'package:equatable/equatable.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';
import 'package:kubirovacka_one/components/statistics_graph/statistics_filter.dart';

abstract class StatsState extends Equatable {
  final StatsInterval selectedInterval;

  const StatsState(this.selectedInterval);

  @override
  List<Object?> get props => [selectedInterval];
}

class StatsInitialState extends StatsState {
  const StatsInitialState(super.selectedInterval);
}

class StatsLoadingState extends StatsState {
  const StatsLoadingState(super.selectedInterval);
}

class StatsOfflineState extends StatsState {
  const StatsOfflineState(super.selectedInterval);
}

class StatsLoadedState extends StatsState {
  final double volume;
  final double earnings;
  final List<GraphDataDto> graphData;

  const StatsLoadedState(super.selectedInterval, {
    required this.volume,
    required this.earnings,
    required this.graphData,
  });

  @override
  List<Object?> get props => [
    volume,
    earnings,
    selectedInterval,
    graphData,
  ];
}

class StatsErrorState extends StatsState {
  final String message;

  const StatsErrorState(super.selectedInterval, this.message);

  @override
  List<Object> get props => [message];
}