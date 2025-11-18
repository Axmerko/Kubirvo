import 'package:kubirovacka_one/enums/wood_log_type.dart';
import 'package:kubirovacka_one/enums/wood_type.dart';
import 'package:kubirovacka_one/models/quality.dart';
import 'package:kubirovacka_one/models/wood_log.dart';

abstract class CalculatorEvent {}

class InitCalculatorEvent extends CalculatorEvent {}

class CalculatorListCreatedEvent extends CalculatorEvent {
  final String listName;
  final int rewardInCents;

  CalculatorListCreatedEvent({required this.listName, required this.rewardInCents});
}

class CalculatorLogAddedEvent extends CalculatorEvent {
  final WoodLogType logType;
  final WoodType woodType;
  final double? length;
  final double? diameter;
  final double volume;
  final bool isRz;
  final int number;
  final String? fsdu;
  final Quality quality;
  final int? rawCategory;
  final int? rawAmount;

  CalculatorLogAddedEvent({
    required this.logType,
    required this.woodType,
    this.length,
    this.diameter,
    required this.volume,
    required this.isRz,
    required this.number,
    this.fsdu,
    required this.quality,
    this.rawCategory,
    this.rawAmount,
  });
}

class CalculatorLogEditedEvent extends CalculatorEvent {
  final WoodLog log;

  CalculatorLogEditedEvent({required this.log});
}

class CalculatorLogDeletedEvent extends CalculatorEvent {
  final WoodLog log;
  final bool reindex;

  CalculatorLogDeletedEvent({required this.log, required this.reindex});
}

class CalculatorLogsDeletedEvent extends CalculatorEvent {
  final List<String> logIds;

  CalculatorLogsDeletedEvent({required this.logIds});
}

class CalculatorListChangedEvent extends CalculatorEvent {
  final String listId;

  CalculatorListChangedEvent({required this.listId});
}

// class LogAddedEvent extends CalculatorEvent {
//   final String log;
//
//   const LogAddedEvent({required this.log});
// }