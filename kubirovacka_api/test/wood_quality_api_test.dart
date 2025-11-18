import 'package:test/test.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';

/// tests for WoodQualityApi
void main() {
  final instance = KubirovackaApi().getWoodQualityApi();

  group(WoodQualityApi, () {
    //Future apiMainWoodQualityDeleteDelete({ String id, String groupId }) async
    test('test apiMainWoodQualityDeleteDelete', () async {
      // TODO
    });

    //Future<WoodQualityDTO> apiMainWoodQualityFormPost({ String groupId, WoodQualityDTO woodQualityDTO }) async
    test('test apiMainWoodQualityFormPost', () async {
      // TODO
    });

    //Future<WoodQualityDTO> apiMainWoodQualityGet({ int quality, String groupId }) async
    test('test apiMainWoodQualityGet', () async {
      // TODO
    });

    //Future<WoodQualityDTOGridDTO> apiMainWoodQualityGridPost({ String groupId, GridQueryDTO gridQueryDTO }) async
    test('test apiMainWoodQualityGridPost', () async {
      // TODO
    });

    //Future<BuiltList<WoodQualityDTO>> apiMainWoodQualityListGet({ String groupId }) async
    test('test apiMainWoodQualityListGet', () async {
      // TODO
    });
  });
}
