import 'package:test/test.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';

/// tests for AdvertisementApi
void main() {
  final instance = KubirovackaApi().getAdvertisementApi();

  group(AdvertisementApi, () {
    //Future apiAdvertisingAdvertisementClickPost({ String groupId, String adId }) async
    test('test apiAdvertisingAdvertisementClickPost', () async {
      // TODO
    });

    //Future<AdStatDTO> apiAdvertisingAdvertisementClicksStatsGet({ DateTime from, DateTime to, String adId, String groupId }) async
    test('test apiAdvertisingAdvertisementClicksStatsGet', () async {
      // TODO
    });

    // Přiřadí kredit reklamě
    //
    //Future apiAdvertisingAdvertisementCreditPatch({ String adId, int adCredit, String groupId }) async
    test('test apiAdvertisingAdvertisementCreditPatch', () async {
      // TODO
    });

    // Smaže reklamu
    //
    //Future apiAdvertisingAdvertisementDelete({ String id, String groupId }) async
    test('test apiAdvertisingAdvertisementDelete', () async {
      // TODO
    });

    // Aktivuje/deaktivuje reklamu
    //
    //Future apiAdvertisingAdvertisementEnabledPatch({ String adId, bool enabled, String groupId }) async
    test('test apiAdvertisingAdvertisementEnabledPatch', () async {
      // TODO
    });

    // Vrátí reklamu
    //
    //Future<AdDTO> apiAdvertisingAdvertisementGet({ String adId, String groupId }) async
    test('test apiAdvertisingAdvertisementGet', () async {
      // TODO
    });

    //Future<BuiltList<InfoMessageDTO>> apiAdvertisingAdvertisementInactiveInfoMessagesGet({ String groupId }) async
    test('test apiAdvertisingAdvertisementInactiveInfoMessagesGet', () async {
      // TODO
    });

    //Future apiAdvertisingAdvertisementInfoMessageDelete({ int id, String groupId }) async
    test('test apiAdvertisingAdvertisementInfoMessageDelete', () async {
      // TODO
    });

    //Future apiAdvertisingAdvertisementInfoMessagePost({ String groupId, InfoMessageDTO infoMessageDTO }) async
    test('test apiAdvertisingAdvertisementInfoMessagePost', () async {
      // TODO
    });

    //Future<BuiltList<InfoMessageDTO>> apiAdvertisingAdvertisementInfoMessagesGet({ String groupId }) async
    test('test apiAdvertisingAdvertisementInfoMessagesGet', () async {
      // TODO
    });

    //Future apiAdvertisingAdvertisementLimitCostPerDayPatch({ String adId, bool limit, String groupId }) async
    test('test apiAdvertisingAdvertisementLimitCostPerDayPatch', () async {
      // TODO
    });

    // Načte reklamu pro zobrazení
    //
    //Future<AdToDisplayDTO> apiAdvertisingAdvertisementLoadGet({ AdType type, String groupId }) async
    test('test apiAdvertisingAdvertisementLoadGet', () async {
      // TODO
    });

    //Future apiAdvertisingAdvertisementMaxCostPerDayPatch({ String adId, int costPerDay, String groupId }) async
    test('test apiAdvertisingAdvertisementMaxCostPerDayPatch', () async {
      // TODO
    });

    //Future apiAdvertisingAdvertisementNamePatch({ String adId, String name, String groupId }) async
    test('test apiAdvertisingAdvertisementNamePatch', () async {
      // TODO
    });

    // Vrátí reklamy
    //
    //Future<BuiltList<AdDTO>> apiAdvertisingAdvertisementOwnedGet({ String groupId }) async
    test('test apiAdvertisingAdvertisementOwnedGet', () async {
      // TODO
    });

    // Vytvoří reklamu
    //
    //Future<AdDTO> apiAdvertisingAdvertisementPost(String name, bool limitCostPerDay, { String groupId, AdType adType, int maxCostPerDay, DateTime showFrom, AdContentType adContentType, String imageId, String destinationUrl, String html, String adId, DateTime createdAt, bool approved, bool enabled, int credits }) async
    test('test apiAdvertisingAdvertisementPost', () async {
      // TODO
    });

    //Future<AdStatDTO> apiAdvertisingAdvertisementSpendingStatsGet({ DateTime from, DateTime to, String adId, String groupId }) async
    test('test apiAdvertisingAdvertisementSpendingStatsGet', () async {
      // TODO
    });

    //Future apiAdvertisingAdvertisementUrlPatch({ String adId, String url, String groupId }) async
    test('test apiAdvertisingAdvertisementUrlPatch', () async {
      // TODO
    });

    //Future apiAdvertisingAdvertisementViewPost({ String groupId, String adId }) async
    test('test apiAdvertisingAdvertisementViewPost', () async {
      // TODO
    });

    //Future<AdStatDTO> apiAdvertisingAdvertisementViewsStatsGet({ DateTime from, DateTime to, String adId, String groupId }) async
    test('test apiAdvertisingAdvertisementViewsStatsGet', () async {
      // TODO
    });
  });
}
