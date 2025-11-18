import 'package:kubirovacka_one/helpers/persistence_helper.dart';

import '../models/quality.dart';

class QualityService {
  List<Quality> qualities = [];

  QualityService() {
    qualities = getStoredQualities();
  }

  List<Quality> getQualities() {
    return qualities;
  }

  String getQualityName(int number) {
    return qualities.firstWhere((element) => element.number == number).name;
  }

  Future setQualities(List<Quality> qualities) async {
    this.qualities = qualities;
    await setStoredQualities(qualities);
  }
}