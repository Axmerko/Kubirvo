import 'package:equatable/equatable.dart';

import '../../../../components/statistics_graph/statistics_filter.dart';

abstract class StatsEvent extends Equatable {
  const StatsEvent();

  @override
  List<Object> get props => [];
}

class LoadStatsEvent extends StatsEvent {
  const LoadStatsEvent();
}

class StatsIntervalChangedEvent extends StatsEvent {
  final StatsInterval selectedInterval;

  const StatsIntervalChangedEvent(this.selectedInterval);

  @override
  List<Object> get props => [selectedInterval];
}