import 'package:event/event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:kubirovacka_one/enums/wood_log_type.dart';
import 'package:kubirovacka_one/events/logs_events.dart';
import 'package:kubirovacka_one/helpers/persistence_helper.dart';
import 'package:async/async.dart';

import 'calculator_event.dart';
import 'calculator_state.dart';

final getIt = GetIt.instance;

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  final _logListCreatedEvent = getIt.get<Event<LogListCreatedEvent>>();
  final _logListLogsChangedEvent = getIt.get<Event<LogListLogsChangedEvent>>();

  CalculatorBloc() : super(CalculatorState.init()) {
    on<InitCalculatorEvent>(_init);
    on<CalculatorListCreatedEvent>(_createList);
    on<CalculatorLogAddedEvent>(_addLog);
    on<CalculatorLogDeletedEvent>(_deleteLog);
    on<CalculatorLogsDeletedEvent>(_deleteLogs);
    on<CalculatorListChangedEvent>(_changeList);
    on<CalculatorLogEditedEvent>(_editLog);
  }

  void _init(InitCalculatorEvent event, Emitter<CalculatorState> emit) async {
    emit(state.clone());
    final openListId = getOpenListId();
    if (openListId == null) {
      emit(const CalculatorNoListOpenState());
    } else {
      final list = await getList(openListId);
      final logs = await getLogs(openListId);
      emit(CalculatorListOpenState(
        currentList: list,
        currentListLogs: logs,
      ));
    }
  }

  void _createList(CalculatorListCreatedEvent event, Emitter<CalculatorState> emit) async {
    var listId = await createList(event.listName, event.rewardInCents);
    final list = await getList(listId);
    final logs = await getLogs(listId);
    await setOpenListId(listId);
    _logListCreatedEvent.broadcast(LogListCreatedEvent(list));
    emit(CalculatorListOpenState(
      currentList: list,
      currentListLogs: logs,
    ));
  }

  CancelableOperation? _cancelableLastAddedLogsHidingOperation;

  void _addLog(CalculatorLogAddedEvent event, Emitter<CalculatorState> emit) async {
    _cancelableLastAddedLogsHidingOperation?.cancel();
    final listId = state.currentList!.id;
    final List<String> addedLogIds = [];
    if (event.logType == WoodLogType.raw) {
      for (var i = 0; i < event.rawAmount!; i++) {
        final addedLogId = await addLog(listId, event.logType, null, null, event.volume / event.rawAmount!, event.fsdu, event.isRz, 0, event.woodType, event.quality.number,
            null, null, event.rawCategory);

        addedLogIds.add(addedLogId);
      }
    } else {
      final addedLogId = await addLog(listId, event.logType, event.length, event.diameter, event.volume, event.fsdu, event.isRz, event.number,
          event.woodType, event.quality.number, null, null, null);
      addedLogIds.add(addedLogId);
    }

    final addedLogs = await getLogsByIds(listId, addedLogIds);

    var logs = await getLogs(listId);
    var list = await getList(listId);

    _logListLogsChangedEvent.broadcast(LogListLogsChangedEvent(list));

    emit(CalculatorListOpenState(currentList: state.currentList, currentListLogs: logs, lastAddedLogs: addedLogs));
    _cancelableLastAddedLogsHidingOperation = CancelableOperation.fromFuture(
        Future.delayed(const Duration(seconds: 3))
    );
    await _cancelableLastAddedLogsHidingOperation!.valueOrCancellation();
    logs = await getLogs(listId);
    list = await getList(listId);
    emit(CalculatorListOpenState(currentList: state.currentList, currentListLogs: logs, lastAddedLogs: null));
  }

  void _editLog(CalculatorLogEditedEvent event, Emitter<CalculatorState> emit) async {
    final listId = state.currentList!.id;
    await editLog(listId, event.log);

    final logs = await getLogs(listId);

    final list = await getList(listId);
    _logListLogsChangedEvent.broadcast(LogListLogsChangedEvent(list));

    emit(CalculatorListOpenState(currentList: state.currentList, currentListLogs: logs));
  }

  void _deleteLog(CalculatorLogDeletedEvent event, Emitter<CalculatorState> emit) async {
    final listId = state.currentList!.id;
    if (event.reindex && event.log.woodLogType != WoodLogType.raw) {
      final deletedNumber = event.log.number;
      var logsWithHigherNumber = await getLogs(listId);
      logsWithHigherNumber = logsWithHigherNumber.where((element) => element.number > deletedNumber).toList();
      logsWithHigherNumber.sort((a, b) => a.number.compareTo(b.number));
      for (var log in logsWithHigherNumber) {
        log.number = log.number - 1;
        await updateLog(log);
      }
    }
    await deleteLog(event.log.logsListId, event.log.id);
    final logs = await getLogs(listId);

    final list = await getList(listId);
    _logListLogsChangedEvent.broadcast(LogListLogsChangedEvent(list));

    emit(CalculatorListOpenState(
      currentList: state.currentList,
      currentListLogs: logs,
    ));
  }

  void _deleteLogs(CalculatorLogsDeletedEvent event, Emitter<CalculatorState> emit) async {
    final listId = state.currentList!.id;
    await deleteLogs(listId, event.logIds);
    final logs = await getLogs(listId);

    final list = await getList(listId);
    _logListLogsChangedEvent.broadcast(LogListLogsChangedEvent(list));

    emit(CalculatorListOpenState(
      currentList: state.currentList,
      currentListLogs: logs,
    ));
  }

  void _changeList(CalculatorListChangedEvent event, Emitter<CalculatorState> emit) async {
    final list = await getList(event.listId);

    final logs = await getLogs(event.listId);
    await setOpenListId(event.listId);
    emit(CalculatorListOpenState(
      currentList: list,
      currentListLogs: logs,
    ));
  }
}
