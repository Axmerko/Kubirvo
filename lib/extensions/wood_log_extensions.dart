import '../models/wood_log.dart';

extension LogListSummarization on List<WoodLog> {
  int count() {
    return length;
  }

  double sumVolume() {
    return fold<double>(0, (previousValue, element) => previousValue + num.parse(element.volume.toStringAsFixed(2)));
  }
}