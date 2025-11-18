import 'package:test/test.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';

/// tests for ReportApi
void main() {
  final instance = KubirovackaApi().getReportApi();

  group(ReportApi, () {
    //Future<Uint8List> apiReportReportDeliveryNotePost({ String groupId, DeliveryNoteDTO deliveryNoteDTO }) async
    test('test apiReportReportDeliveryNotePost', () async {
      // TODO
    });

    // Generuje XLSX přehled sdíleného seznamu
    //
    //Future<Uint8List> apiReportReportOverviewSharedXLSXPost({ String listId, bool detailedRaws, String groupId }) async
    test('test apiReportReportOverviewSharedXLSXPost', () async {
      // TODO
    });

    // Generuje XLSX přehled seznamu
    //
    //Future<Uint8List> apiReportReportOverviewXLSXPost({ bool detailedRaws, String groupId, BuiltList<String> requestBody }) async
    test('test apiReportReportOverviewXLSXPost', () async {
      // TODO
    });

    //Future<Uint8List> apiReportReportProofOfOriginPost({ String groupId, ProofOfOriginDTO proofOfOriginDTO }) async
    test('test apiReportReportProofOfOriginPost', () async {
      // TODO
    });
  });
}
