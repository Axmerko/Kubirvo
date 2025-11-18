abstract class ListsEvent {}

class InitListsEvent extends ListsEvent {}

class ListsListOpenedEvent extends ListsEvent {
  final String listId;

  ListsListOpenedEvent({required this.listId});
}

class ListsListDeletedEvent extends ListsEvent {
  final String id;

  ListsListDeletedEvent({required this.id});
}

class ListsListSyncRequestedEvent extends ListsEvent {
  final String id;

  ListsListSyncRequestedEvent({required this.id});
}

class ListsListEditedEvent extends ListsEvent {
  final String id;
  final String name;
  final int rewardInCents;

  ListsListEditedEvent({required this.id, required this.name, required this.rewardInCents});
}