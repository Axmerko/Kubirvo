import 'package:get_it/get_it.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart' as api;
import 'package:kubirovacka_one/enums/wood_log_type.dart';
import 'package:kubirovacka_one/enums/wood_type.dart';
import 'package:kubirovacka_one/extensions/enum_extensions.dart';
import 'package:kubirovacka_one/services/quality_service.dart';

final getIt = GetIt.instance;

class WoodLog {
  String id;
  String logsListId;
  WoodLogType woodLogType;
  double? length;
  double? diameter;
  double volume;
  String? fsdu;
  bool isRhizome;
  int number;
  WoodType woodType;
  int quality;
  double? lat;
  double? lng;
  DateTime addedAt;
  int? rawCategory;

  WoodLog({
    required this.id,
    required this.logsListId,
    required this.woodLogType,
    this.length,
    this.diameter,
    required this.volume,
    this.fsdu,
    required this.isRhizome,
    required this.number,
    required this.woodType,
    required this.quality,
    this.lat,
    this.lng,
    required this.addedAt,
    this.rawCategory,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id.toString(),
      'log_list_id': logsListId.toString(),
      'wood_log_type': woodLogType.index,
      'length': length,
      'diameter': diameter,
      'volume': volume,
      'fsdu': fsdu,
      'is_rhizome': isRhizome ? 1 : 0,
      'number': number,
      'wood_type': woodType.index,
      'quality': quality,
      'lat': lat,
      'lng': lng,
      'added_at': addedAt.toIso8601String(),
      'raw_category': rawCategory,
    };
  }

  static WoodLog fromMap(Map<String, dynamic> map) {
    return WoodLog(
      id: map['id'],
      logsListId: map['log_list_id'],
      woodLogType: WoodLogType.values[map['wood_log_type']],
      length: map['length'],
      diameter: map['diameter'],
      volume: map['volume'],
      fsdu: map['fsdu'],
      isRhizome: map['is_rhizome'] == 1,
      number: map['number'],
      woodType: WoodType.values[map['wood_type']],
      quality: map['quality'],
      lat: map['lat'],
      lng: map['lng'],
      addedAt: DateTime.parse(map['added_at']),
      rawCategory: map['raw_category'],
    );
  }

  WoodLog copy() {
    return WoodLog(
      id: id,
      logsListId: logsListId,
      woodLogType: woodLogType,
      length: length,
      diameter: diameter,
      volume: volume,
      fsdu: fsdu,
      isRhizome: isRhizome,
      number: number,
      woodType: woodType,
      quality: quality,
      lat: lat,
      lng: lng,
      addedAt: addedAt,
      rawCategory: rawCategory,
    );
  }

  api.WoodLogDTO toDTO() {
    final qualityService = getIt.get<QualityService>();
    var qualities = qualityService.qualities;
    var dtoBuilder = api.WoodLogDTOBuilder()
      ..woodLogType = woodLogType.toApiWoodLogType()
      ..length = length ?? 0
      ..diameter = diameter ?? 0
      ..volume = double.parse(volume.toStringAsFixed(2))
      ..isRhizome = isRhizome
      ..number = number
      ..woodType = woodType.toApiWoodType()
      ..quality = quality
      ..qualityName = qualities
          .where((q) => q.number == quality)
          .first
          .name
      ..fsdu = fsdu
      ..addedAt = addedAt.toUtc()
      ..rawCategory = rawCategory;

    return dtoBuilder.build();
  }
}