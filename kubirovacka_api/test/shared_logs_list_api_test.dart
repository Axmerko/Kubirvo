import 'package:test/test.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';

/// tests for SharedLogsListApi
void main() {
  final instance = KubirovackaApi().getSharedLogsListApi();

  group(SharedLogsListApi, () {
    //Future apiMainSharedLogsListAcceptPost({ String listId, String sendId, String groupId }) async
    test('test apiMainSharedLogsListAcceptPost', () async {
      // TODO
    });

    //Future<WoodLogListSendDTO> apiMainSharedLogsListGet({ String listId, String sendId, String groupId }) async
    test('test apiMainSharedLogsListGet', () async {
      // TODO
    });

    //Future<BuiltList<WoodLogListSendDTO>> apiMainSharedLogsListListGet({ String sendId, String groupId }) async
    test('test apiMainSharedLogsListListGet', () async {
      // TODO
    });

    //Future apiMainSharedLogsListPost({ String groupId, ShareLogListDTO shareLogListDTO }) async
    test('test apiMainSharedLogsListPost', () async {
      // TODO
    });
  });
}
