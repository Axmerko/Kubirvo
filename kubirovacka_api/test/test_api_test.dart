import 'package:test/test.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';

/// tests for TestApi
void main() {
  final instance = KubirovackaApi().getTestApi();

  group(TestApi, () {
    //Future apiMainTestPost({ DateTime dto, String groupId }) async
    test('test apiMainTestPost', () async {
      // TODO
    });
  });
}
