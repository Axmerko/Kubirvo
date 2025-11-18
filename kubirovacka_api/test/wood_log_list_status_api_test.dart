import 'package:test/test.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';

/// tests for WoodLogListStatusApi
void main() {
  final instance = KubirovackaApi().getWoodLogListStatusApi();

  group(WoodLogListStatusApi, () {
    //Future<BuiltList<WoodLogListStatus>> apiMainWoodLogListStatusGet({ String groupId }) async
    test('test apiMainWoodLogListStatusGet', () async {
      // TODO
    });
  });
}
