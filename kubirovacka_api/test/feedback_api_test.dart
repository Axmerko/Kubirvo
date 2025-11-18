import 'package:test/test.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';

/// tests for FeedbackApi
void main() {
  final instance = KubirovackaApi().getFeedbackApi();

  group(FeedbackApi, () {
    //Future<BuiltList<FeedbackDTO>> apiMainFeedbackGet({ FeedbackStatus status, String groupId }) async
    test('test apiMainFeedbackGet', () async {
      // TODO
    });

    //Future<FeedbackDTO> apiMainFeedbackIdGet(String id, { String groupId }) async
    test('test apiMainFeedbackIdGet', () async {
      // TODO
    });

    // Přidá změtnou vazbu
    //
    //Future apiMainFeedbackPost({ String groupId, FeedbackDTO feedbackDTO }) async
    test('test apiMainFeedbackPost', () async {
      // TODO
    });

    //Future<FeedbackDTO> apiMainFeedbackStatusPatch({ String id, FeedbackStatus status, String groupId }) async
    test('test apiMainFeedbackStatusPatch', () async {
      // TODO
    });
  });
}
