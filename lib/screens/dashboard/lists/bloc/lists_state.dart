import 'package:equatable/equatable.dart';

import '../../../../models/wood_log_list.dart';

class ListsState extends Equatable {
  final List<WoodLogList> lists;
  final List<String> syncedLists;

  const ListsState({required this.lists, required this.syncedLists});

  factory ListsState.init() {
    return const ListsState(
      lists: [],
      syncedLists: [],
    );
  }

  ListsState clone() {
    return ListsState(
      lists: lists,
      syncedLists: syncedLists,
    );
  }

  @override
  List<Object> get props => [lists, syncedLists];
}

class ListsListSelectedState extends ListsState {
  final String listId;

  const ListsListSelectedState({
    required super.lists,
    required this.listId,
    required super.syncedLists,
  });

  @override
  ListsListSelectedState clone() {
    return ListsListSelectedState(
      lists: lists,
      listId: listId,
      syncedLists: syncedLists,
    );
  }

  @override
  List<Object> get props => [
        lists,
        listId,
        syncedLists,
      ];
}