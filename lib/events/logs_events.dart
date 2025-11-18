import 'package:event/event.dart';
import 'package:kubirovacka_one/models/wood_log_list.dart';

class LogListCreatedEvent extends EventArgs {
  final WoodLogList list;

  LogListCreatedEvent(this.list);
}

class LogListEditedEvent extends EventArgs {
  final WoodLogList list;

  LogListEditedEvent(this.list);
}

class LogListLogsChangedEvent extends EventArgs {
  final WoodLogList list;

  LogListLogsChangedEvent(this.list);
}