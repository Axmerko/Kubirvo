import 'package:test/test.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';

/// tests for LogsListStatsApi
void main() {
  final instance = KubirovackaApi().getLogsListStatsApi();

  group(LogsListStatsApi, () {
    // Vrací statistiky výdělků uživatele
    //
    //Future<GraphDataDto> apiMainLogsListStatsEarningsGraphDataGet({ StatsTimespan timespan, String groupId }) async
    test('test apiMainLogsListStatsEarningsGraphDataGet', () async {
      // TODO
    });

    // Vrací statistiky výdělků uživatele
    //
    //Future<WoodLogListStatDTO> apiMainLogsListStatsEarningsStatsGet({ DateTime from, DateTime to, String groupId }) async
    test('test apiMainLogsListStatsEarningsStatsGet', () async {
      // TODO
    });

    // Vrací statistiky výdělků skupiny
    //
    //Future<GraphDataDto> apiMainLogsListStatsGroupEarningsGraphDataGet({ StatsTimespan timespan, String groupId }) async
    test('test apiMainLogsListStatsGroupEarningsGraphDataGet', () async {
      // TODO
    });

    // Vrací statistiky výdělků skupiny
    //
    //Future<WoodLogListStatDTO> apiMainLogsListStatsGroupEarningsStatsGet({ DateTime from, DateTime to, String groupId }) async
    test('test apiMainLogsListStatsGroupEarningsStatsGet', () async {
      // TODO
    });

    // Vrací statistiky těžby skupiny
    //
    //Future<GraphDataDto> apiMainLogsListStatsGroupPerformanceGraphDataGet({ StatsTimespan timespan, String groupId }) async
    test('test apiMainLogsListStatsGroupPerformanceGraphDataGet', () async {
      // TODO
    });

    // Vrací statistiky těžby skupiny
    //
    //Future<WoodLogListStatDTO> apiMainLogsListStatsGroupPerformanceStatsGet({ DateTime from, DateTime to, String groupId }) async
    test('test apiMainLogsListStatsGroupPerformanceStatsGet', () async {
      // TODO
    });

    // Vrací statistiky těžby skupiny pro jednotlivé členy
    //
    //Future<GraphDataDto> apiMainLogsListStatsGroupPerformanceStatsPerMemberGet({ StatsTimespan timespan, String groupId }) async
    test('test apiMainLogsListStatsGroupPerformanceStatsPerMemberGet',
        () async {
      // TODO
    });

    // Vrací statistiky těžby uživatele
    //
    //Future<GraphDataDto> apiMainLogsListStatsPerformanceGraphDataGet({ StatsTimespan timespan, String groupId }) async
    test('test apiMainLogsListStatsPerformanceGraphDataGet', () async {
      // TODO
    });

    // Vrací statistiky těžby uživatele
    //
    //Future<WoodLogListStatDTO> apiMainLogsListStatsPerformanceStatsGet({ DateTime from, DateTime to, String groupId }) async
    test('test apiMainLogsListStatsPerformanceStatsGet', () async {
      // TODO
    });
  });
}
