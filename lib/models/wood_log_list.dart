import 'package:built_collection/built_collection.dart';
import 'package:get_it/get_it.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart' as api;
import 'package:kubirovacka_one/models/wood_log.dart';
import 'package:kubirovacka_one/services/auth_service.dart';

final getIt = GetIt.instance;

class WoodLogList {
  String id;
  String name;
  DateTime createdAt;
  DateTime? uploadedAt;
  bool isCurrentVersionUploaded = false;
  int rewardInCents;

  WoodLogList({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.uploadedAt,
    required this.rewardInCents,
    this.isCurrentVersionUploaded = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id.toString(),
      'name': name,
      'created_at': createdAt.toIso8601String(),
      'uploaded_at': uploadedAt?.toIso8601String(),
      'reward_in_cents': rewardInCents,
      'is_current_version_uploaded': isCurrentVersionUploaded ? 1 : 0,
    };
  }

  static WoodLogList fromMap(Map<String, dynamic> map) {
    return WoodLogList(
      id: map['id'],
      name: map['name'],
      createdAt: DateTime.parse(map['created_at']),
      uploadedAt: map['uploaded_at'] != null ? DateTime.parse(map['uploaded_at']) : null,
      rewardInCents: map['reward_in_cents'],
      isCurrentVersionUploaded: map['is_current_version_uploaded'] == 1,
    );
  }

  WoodLogList.empty() : this(
      id: '',
      name: '',
      createdAt: DateTime.now(),
      uploadedAt: null,
      rewardInCents: 0,
      isCurrentVersionUploaded: false
  );

  api.WoodLogListDTO toDTO(List<WoodLog> logs) {
    final authService = getIt.get<AuthService>();
    var logDTOs = logs.map((e) => e.toDTO()).toList();
    var logsBuilder = ListBuilder<api.WoodLogDTO>(logDTOs);
    var dtoBuilder = api.WoodLogListDTOBuilder()
      ..id = id
      ..ownerGroupId = authService.getGroupId()
      ..name = name
      ..createdAt = createdAt.toUtc()
      ..rewardType = api.RewardType.rewardForCubicMeter
      ..statusDto = api.WoodLogListStatusDTOBuilder()
      ..rewardInCents = rewardInCents
      ..logs = logsBuilder
      ..editedFromWeb = false
      ..updatedAt = DateTime.now().toUtc();

    return dtoBuilder.build();
  }
}
