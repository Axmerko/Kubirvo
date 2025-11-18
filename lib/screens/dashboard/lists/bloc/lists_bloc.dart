import 'package:event/event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:kubirovacka_one/helpers/persistence_helper.dart';
import 'package:kubirovacka_one/services/scheduler_service.dart';

import '../../../../events/logs_events.dart';
import 'lists_event.dart';
import 'lists_state.dart';

final getIt = GetIt.instance;

class ListsBloc extends Bloc<ListsEvent, ListsState> {
  final _logListEditedEvent = getIt.get<Event<LogListEditedEvent>>();
  final _scheduleService = getIt.get<SchedulerService>();

  ListsBloc() : super(ListsState.init()) {
    on<InitListsEvent>(_init);
    on<ListsListOpenedEvent>(_listOpened);
    on<ListsListDeletedEvent>(_listDeleted);
    on<ListsListEditedEvent>(_listEdited);
    on<ListsListSyncRequestedEvent>(_listSyncRequested);
  }

  void _init(InitListsEvent event, Emitter<ListsState> emit) async {
    final lists = await getLists();
    emit(ListsState(lists: lists, syncedLists: List<String>.empty()));
  }

  void _listOpened(ListsListOpenedEvent event, Emitter<ListsState> emit) async {
    emit(ListsListSelectedState(lists: state.lists, listId: event.listId, syncedLists: state.syncedLists));
  }

  void _listDeleted(ListsListDeletedEvent event, Emitter<ListsState> emit) async {
    await deleteList(event.id);
    final lists = await getLists();
    emit(ListsState(lists: lists, syncedLists: state.syncedLists));
  }

  void _listEdited(ListsListEditedEvent event, Emitter<ListsState> emit) async {
    await editList(event.id, event.name, event.rewardInCents);
    final lists = await getLists();

    final list = lists.firstWhere((element) => element.id == event.id);
    _logListEditedEvent.broadcast(LogListEditedEvent(list));

    emit(ListsState(lists: lists, syncedLists: state.syncedLists));
  }

  void _listSyncRequested(ListsListSyncRequestedEvent event, Emitter<ListsState> emit) async {
    var syncedLists = state.syncedLists.toList();
    syncedLists.add(event.id);
    emit(ListsState(lists: state.lists, syncedLists: syncedLists));
    await _scheduleService.syncList(event.id);
    final lists = await getLists();
    syncedLists = state.syncedLists.toList();
    syncedLists.remove(event.id);
    emit(ListsState(lists: lists, syncedLists: syncedLists));
  }
}
