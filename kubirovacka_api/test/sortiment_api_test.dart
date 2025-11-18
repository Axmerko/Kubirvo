import 'package:test/test.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';

/// tests for SortimentApi
void main() {
  final instance = KubirovackaApi().getSortimentApi();

  group(SortimentApi, () {
    //Future<SortimentDTO> apiMainSortimentByCodeCodeGet(String code, { String groupId }) async
    test('test apiMainSortimentByCodeCodeGet', () async {
      // TODO
    });

    //Future<BuiltList<SortimentDTO>> apiMainSortimentByGroupGet({ String groupId }) async
    test('test apiMainSortimentByGroupGet', () async {
      // TODO
    });

    //Future<BuiltList<SortimentDTO>> apiMainSortimentByUserGet({ String groupId }) async
    test('test apiMainSortimentByUserGet', () async {
      // TODO
    });

    //Future<SortimentDTO> apiMainSortimentIdGet(String id, { String groupId }) async
    test('test apiMainSortimentIdGet', () async {
      // TODO
    });

    //Future<SortimentDTO> apiMainSortimentIdPut(String id, { String groupId, CreateSortimentDTO createSortimentDTO }) async
    test('test apiMainSortimentIdPut', () async {
      // TODO
    });

    //Future<SortimentDTO> apiMainSortimentPost({ String groupId, CreateSortimentDTO createSortimentDTO }) async
    test('test apiMainSortimentPost', () async {
      // TODO
    });
  });
}
