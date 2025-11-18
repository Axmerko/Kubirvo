import 'package:equatable/equatable.dart';
import 'package:kubirovacka_one/enums/wood_log_type.dart';
import 'package:kubirovacka_one/models/wood_log.dart';
import 'package:kubirovacka_one/models/wood_log_list.dart';

class CalculatorState extends Equatable {
  final WoodLogList? currentList;
  final List<WoodLog>? currentListLogs;

  List<WoodLog>? get currentListLogsClassicLogs {
    if (currentListLogs == null) {
      return [];
    }
    return currentListLogs!.where((element) => element.woodLogType != WoodLogType.raw).toList();
  }

  List<WoodLog>? get currentListLogsRaws {
    if (currentListLogs == null) {
      return [];
    }
    return currentListLogs!.where((element) => element.woodLogType == WoodLogType.raw).toList();
  }

  const CalculatorState({this.currentList, this.currentListLogs});

  factory CalculatorState.init() {
    return const CalculatorState();
  }

  CalculatorState clone() {
    return CalculatorState(
      currentList: currentList,
      currentListLogs: currentListLogs,
    );
  }

  @override
  List<Object> get props => [currentList ?? WoodLogList.empty(), currentListLogs ?? []];
}

class CalculatorListOpenState extends CalculatorState {
  final List<WoodLog>? lastAddedLogs;

  const CalculatorListOpenState({
    required super.currentList,
    required super.currentListLogs,
    this.lastAddedLogs,
  });

  @override
  List<Object> get props => [currentList!, currentListLogs!, lastAddedLogs ?? []];

  CalculatorListOpenState copyWith({
    WoodLogList? currentList,
    List<WoodLog>? currentListLogs,
    List<WoodLog>? lastAddedLogs,
  }) {
    return CalculatorListOpenState(
      currentList: currentList ?? this.currentList,
      currentListLogs: currentListLogs ?? this.currentListLogs,
      lastAddedLogs: lastAddedLogs ?? this.lastAddedLogs,
    );
  }

  @override
  CalculatorListOpenState clone() {
    return CalculatorListOpenState(
      currentList: currentList,
      currentListLogs: currentListLogs,
      lastAddedLogs: lastAddedLogs,
    );
  }
}

class CalculatorNoListOpenState extends CalculatorState {
  const CalculatorNoListOpenState();

  @override
  List<Object> get props => [
        currentList ?? WoodLogList.empty(),
        currentListLogs ?? [],
      ];

  @override
  CalculatorNoListOpenState clone() {
    return const CalculatorNoListOpenState();
  }
}
