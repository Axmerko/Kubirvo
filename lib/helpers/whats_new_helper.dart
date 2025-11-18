import 'package:flutter/material.dart';
import 'package:kubirovacka_one/components/whats_new_dialog.dart';
import 'package:kubirovacka_one/helpers/persistence_helper.dart';

enum WhatsNewType {
  feature,
  bugfix,
}

class WhatsNewFeature {
  final WhatsNewType type;
  final String message;

  WhatsNewFeature({required this.type, required this.message});
}

class WhatsNewMessage {
  final int id;
  final String version;
  final List<WhatsNewFeature> features;

  WhatsNewMessage({required this.id, required this.version, required this.features});
}

List<WhatsNewMessage> newsMessages = [
  WhatsNewMessage(id: 6, version: '2025.1.1', features: [
    WhatsNewFeature(type: WhatsNewType.feature, message: 'Stránka se statistikami a grafy'),
    WhatsNewFeature(type: WhatsNewType.feature, message: 'Odesílání seznamů jako Excel nebo odkaz'),
    WhatsNewFeature(type: WhatsNewType.feature, message: 'Automatické vyplňování přihlašovacích údajů'),
    WhatsNewFeature(type: WhatsNewType.bugfix, message: 'Oprava zakládání seznamů na malých telefonech'),
    WhatsNewFeature(type: WhatsNewType.bugfix, message: 'Oprava nesrovnalostí v součtech objemů mezi aplikací a webem'),
  ]),
];

void showWhatsNewMessageIfNew(BuildContext context) async {
  var newUser = getOpenListId() == null;
  var lastSeen = getLastViewedNewsMessage();
  var latestMessage = newsMessages.last;

  // if it's a new user, don't show anything and set the last viewed message to the latest one
  if (newUser) {
    await setLastViewedNewsMessage(latestMessage.id);
    return;
  }

  var unseenMessages = newsMessages.where((message) => message.id > (lastSeen ?? 0)).toList();
  var features = unseenMessages.expand((message) => message.features.where((feature) => feature.type == WhatsNewType.feature)).map((feature) => feature.message).toList();
  var bugfixes = unseenMessages.expand((message) => message.features.where((feature) => feature.type == WhatsNewType.bugfix)).map((feature) => feature.message).toList();

  if (features.isNotEmpty || bugfixes.isNotEmpty) {
    showDialog(context: context, builder: (builder) => WhatsNewDialog(features: features, bugfixes: bugfixes, version: latestMessage.version));
    await setLastViewedNewsMessage(latestMessage.id);
  }
}
