import 'package:test/test.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';

/// tests for DeliveryNoteApi
void main() {
  final instance = KubirovackaApi().getDeliveryNoteApi();

  group(DeliveryNoteApi, () {
    //Future<BuiltList<GetDeliveryNoteDTO>> apiMainDeliveryNoteByGroupGet({ bool onlyNotImported, String groupId }) async
    test('test apiMainDeliveryNoteByGroupGet', () async {
      // TODO
    });

    //Future<BuiltList<GetDeliveryNoteDTO>> apiMainDeliveryNoteByUserGet({ bool onlyNotImported, String groupId }) async
    test('test apiMainDeliveryNoteByUserGet', () async {
      // TODO
    });

    //Future<BuiltList<String>> apiMainDeliveryNoteGenerateRandomPost({ String groupId, int body }) async
    test('test apiMainDeliveryNoteGenerateRandomPost', () async {
      // TODO
    });

    //Future<DetailedGetDeliveryNoteDTO> apiMainDeliveryNoteIdGet(String id, { String groupId }) async
    test('test apiMainDeliveryNoteIdGet', () async {
      // TODO
    });

    //Future<GetDeliveryNoteDTO> apiMainDeliveryNoteIdLockedPatch(String id, { String groupId, UpdateLockedDTO updateLockedDTO }) async
    test('test apiMainDeliveryNoteIdLockedPatch', () async {
      // TODO
    });

    //Future apiMainDeliveryNoteIdPhotosPhotoIdDelete(String id, String photoId, { String groupId }) async
    test('test apiMainDeliveryNoteIdPhotosPhotoIdDelete', () async {
      // TODO
    });

    //Future<GetDeliveryNotePhotoDTO> apiMainDeliveryNoteIdPhotosPost(String id, { String groupId, MultipartFile file }) async
    test('test apiMainDeliveryNoteIdPhotosPost', () async {
      // TODO
    });

    //Future<GetDeliveryNoteDTO> apiMainDeliveryNotePost({ String groupId, CreateDeliveryNoteDTO createDeliveryNoteDTO }) async
    test('test apiMainDeliveryNotePost', () async {
      // TODO
    });
  });
}
