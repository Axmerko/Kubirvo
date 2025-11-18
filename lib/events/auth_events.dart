import 'package:event/event.dart';

class UserInitCompleteEvent extends EventArgs {
  final bool isPremium;
  final String groupId;

  UserInitCompleteEvent(this.isPremium, this.groupId);
}

class UserPurchasedPremiumEvent extends EventArgs {
  UserPurchasedPremiumEvent();
}