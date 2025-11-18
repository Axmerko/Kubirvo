import 'package:test/test.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';

/// tests for MailingApi
void main() {
  final instance = KubirovackaApi().getMailingApi();

  group(MailingApi, () {
    //Future apiMailingMailingPost(MailingTargetType targetType, String subject, String body, bool isHtml, { String groupId, String emails }) async
    test('test apiMailingMailingPost', () async {
      // TODO
    });
  });
}
