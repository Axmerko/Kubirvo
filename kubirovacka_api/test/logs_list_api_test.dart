import 'package:test/test.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';

/// tests for LogsListApi
void main() {
  final instance = KubirovackaApi().getLogsListApi();

  group(LogsListApi, () {
    // Maže seznam
    //
    //Future apiMainLogsListDelete({ String id, String groupId }) async
    test('test apiMainLogsListDelete', () async {
      // TODO
    });

    // Vrací informace o seznamu
    //
    //Future<WoodLogListDTO> apiMainLogsListGet({ String logsListId, String groupId }) async
    test('test apiMainLogsListGet', () async {
      // TODO
    });

    // Vrací seznamy skupiny
    //
    //Future<WoodLogListWithPerformanceAndCreatorDTOGridDTO> apiMainLogsListGridGroupPost({ String groupId, GridQueryDTO gridQueryDTO }) async
    test('test apiMainLogsListGridGroupPost', () async {
      // TODO
    });

    // Vrací seznamy uživatele stručně
    //
    //Future<WoodLogListWithPerformanceDTOGridDTO> apiMainLogsListGridPersonalPost({ String groupId, GridQueryDTO gridQueryDTO }) async
    test('test apiMainLogsListGridPersonalPost', () async {
      // TODO
    });

    // Aktualizuje Logs list
    //
    //Future apiMainLogsListIdPut(String id, { String groupId, WoodLogListDTO woodLogListDTO }) async
    test('test apiMainLogsListIdPut', () async {
      // TODO
    });

    //Future<BuiltList<WoodLogListDTO>> apiMainLogsListListGet({ String filter, String groupId }) async
    test('test apiMainLogsListListGet', () async {
      // TODO
    });

    //Future<BuiltList<WoodLogListDTO>> apiMainLogsListListPersonalGet({ String filter, String groupId }) async
    test('test apiMainLogsListListPersonalGet', () async {
      // TODO
    });

    //Future apiMainLogsListPatch({ String groupId, WoodLogListDTO woodLogListDTO }) async
    test('test apiMainLogsListPatch', () async {
      // TODO
    });

    // Vytvoří nový seznam klád
    //
    //Future<WoodLogListDTO> apiMainLogsListPost({ String groupId, WoodLogListDTO woodLogListDTO }) async
    test('test apiMainLogsListPost', () async {
      // TODO
    });

    // Vygeneruje nový náhodné seznamy klád
    //
    //Future<BuiltList<WoodLogListDTO>> apiMainLogsListRandomListsPost({ String groupId, String userId, String groupId2, int listsCount }) async
    test('test apiMainLogsListRandomListsPost', () async {
      // TODO
    });

    //Future apiMainLogsListStatusPatch({ String listId, int statusId, String groupId }) async
    test('test apiMainLogsListStatusPatch', () async {
      // TODO
    });

    // Vrací sumář seznamu
    //
    //Future<WoodLogListSummaryDTO> apiMainLogsListSummaryGet({ String logsListId, String groupId }) async
    test('test apiMainLogsListSummaryGet', () async {
      // TODO
    });
  });
}
