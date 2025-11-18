
import 'package:get_it/get_it.dart';
import 'package:kubirovacka_one/models/quality.dart';
import 'package:kubirovacka_one/models/wood_log.dart';
import 'package:kubirovacka_one/models/wood_log_list.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:uuid/uuid.dart';

import '../enums/wood_log_type.dart';
import '../enums/wood_type.dart';

final getIt = GetIt.instance;
var uuid = const Uuid();
final prefs = getIt.get<SharedPreferences>();

// region Prefs

// region Lists
String? getOpenListId() {
  final openListId = prefs.getString('openListId');
  if (openListId == null) {
    return null;
  } else {
    return openListId;
  }
}

Future<void> setOpenListId(String openListId) async {
  await prefs.setString('openListId', openListId.toString());
}

// endregion

// region Qualities

List<Quality> getStoredQualities() {
  final qualityStrings = prefs.getString('qualitiesJson');
  if (qualityStrings == null) {
    return [
      const Quality(1, 'I - Jakost'),
      const Quality(2, 'II - Jakost'),
      const Quality(3, 'III - Jakost'),
      const Quality(4, 'IV - Jakost'),
      const Quality(5, 'V - Jakost'),
      const Quality(6, 'VI - Jakost'),
    ];
  } else {
    return Quality.fromJsonArray(qualityStrings);
  }
}

Future<void> setStoredQualities(List<Quality> qualities) async {
  await prefs.setString('qualitiesJson', Quality.toJsonArray(qualities));
}

// endregion

// region News

int? getLastViewedNewsMessage() {
  return prefs.getInt('lastViewedNewsMessage');
}

Future<void> setLastViewedNewsMessage(int id) async {
  await prefs.setInt('lastViewedNewsMessage', id);
}

Future<void> clearLastViewedNewsMessage() async {
  await prefs.remove('lastViewedNewsMessage');
}

// endregion

// endregion

// region DB

Future<String> createList(String name, int rewardInCents) async {
  final db = getIt.get<Database>();
  final listId = uuid.v4();
  final list = WoodLogList(id: listId, name: name, createdAt: DateTime.now(), uploadedAt: null, rewardInCents: rewardInCents, isCurrentVersionUploaded: false);
  await db.insert('wood_log_list', list.toMap(), conflictAlgorithm: ConflictAlgorithm.abort);

  return listId;
}

Future deleteList(String listId) async {
  final db = getIt.get<Database>();
  await db.delete('wood_log', where: 'log_list_id = ?', whereArgs: [listId]);
  await db.delete('wood_log_list', where: 'id = ?', whereArgs: [listId]);
}

Future editList(String listId, String name, int rewardInCents) async {
  final db = getIt.get<Database>();
  final currentList = await getList(listId);
  final list =
      WoodLogList(id: listId, name: name, createdAt: currentList.createdAt, uploadedAt: currentList.uploadedAt, rewardInCents: rewardInCents, isCurrentVersionUploaded: false);
  await db.update('wood_log_list', list.toMap(), where: 'id = ?', whereArgs: [listId]);
}

Future<WoodLogList> getList(String listId) async {
  final db = getIt.get<Database>();
  final maps = await db.query('wood_log_list', where: 'id = ?', whereArgs: [listId]);
  if (maps.isEmpty) {
    throw Exception('List with id $listId not found');
  }
  return WoodLogList.fromMap(maps.first);
}

Future<List<WoodLogList>> getLists() async {
  final db = getIt.get<Database>();
  final maps = await db.query('wood_log_list', orderBy: 'created_at DESC');

  return maps.map((e) => WoodLogList.fromMap(e)).toList();
}

Future<List<WoodLog>> getLogs(String listId) async {
  final db = getIt.get<Database>();
  final maps = await db.query('wood_log', where: 'log_list_id = ?', whereArgs: [listId], orderBy: 'number');
  return List.generate(maps.length, (i) {
    return WoodLog.fromMap(maps[i]);
  });
}

Future<WoodLog?> getLog(String listId, String logId) async {
  final db = getIt.get<Database>();
  final maps = await db.query('wood_log', where: 'id = ? AND log_list_id = ?', whereArgs: [logId, listId]);
  if (maps.isEmpty) {
    return null;
  }
  return WoodLog.fromMap(maps.first);
}

Future<List<WoodLog>> getLogsByIds(String listId, List<String> logIds) {
  final db = getIt.get<Database>();
  final logIdsString = logIds.map((e) => "'$e'").join(',');
  return db.rawQuery('SELECT * FROM wood_log WHERE id IN ($logIdsString) AND log_list_id = ?', [listId]).then((value) {
    return value.map((e) => WoodLog.fromMap(e)).toList();
  });
}

Future<String> addLog(String listId, WoodLogType woodLogType, double? length, double? diameter, double volume, String? fsdu, bool isRhizome,
    int number, WoodType woodType, int quality, double? lat, double? lng, int? rawCategory) async {
  final logId = uuid.v4();
  final log = WoodLog(
    id: logId,
    logsListId: listId,
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
    addedAt: DateTime.now(),
    rawCategory: rawCategory,
  );
  final db = getIt.get<Database>();
  await db.insert('wood_log', log.toMap(), conflictAlgorithm: ConflictAlgorithm.abort);

  // set list's current version as not uploaded
  await db.update('wood_log_list', {'is_current_version_uploaded': 0}, where: 'id = ?', whereArgs: [listId]);

  return logId;
}

Future editLog(String listId, WoodLog woodLog) async {
  final db = getIt.get<Database>();
  await db.update('wood_log', woodLog.toMap(), where: 'id = ? AND log_list_id = ?', whereArgs: [woodLog.id, woodLog.logsListId]);

  // set list's current version as not uploaded
  await db.update('wood_log_list', {'is_current_version_uploaded': 0}, where: 'id = ?', whereArgs: [listId]);
}

Future deleteLog(String listId, String logId) async {
  final db = getIt.get<Database>();
  await db.delete('wood_log', where: 'id = ? AND log_list_id = ?', whereArgs: [logId, listId]);

  // set list's current version as not uploaded
  await db.update('wood_log_list', {'is_current_version_uploaded': 0}, where: 'id = ?', whereArgs: [listId]);
}

Future deleteLogs(String listId, List<String> logIds) async {
  final db = getIt.get<Database>();

  // set list's current version as not uploaded
  await db.update('wood_log_list', {'is_current_version_uploaded': 0}, where: 'id = ?', whereArgs: [listId]);

  final batch = db.batch();
  for (final logId in logIds) {
    batch.delete('wood_log', where: 'id = ? AND log_list_id = ?', whereArgs: [logId, listId]);
  }
  return batch.commit(noResult: true);
}

Future updateLog(WoodLog log) async {
  final db = getIt.get<Database>();
  await db.update('wood_log', log.toMap(), where: 'id = ? AND log_list_id = ?', whereArgs: [log.id, log.logsListId]);

  // set list's current version as not uploaded
  await db.update('wood_log_list', {'is_current_version_uploaded': 0}, where: 'id = ?', whereArgs: [log.logsListId]);
}

Future<List<WoodLogList>> getListsToUpload() async {
  final db = getIt.get<Database>();
  final maps = await db.query('wood_log_list', where: 'is_current_version_uploaded = 0');
  return maps.map((e) => WoodLogList.fromMap(e)).toList();
}

Future setListCurrentVersionUploaded(String listId) async {
  final db = getIt.get<Database>();
  await db.update('wood_log_list', {'is_current_version_uploaded': 1}, where: 'id = ?', whereArgs: [listId]);
}

Future setListUploadedAtNow(String listId) async {
  final db = getIt.get<Database>();
  await db.update('wood_log_list', {'uploaded_at': DateTime.now().toIso8601String()}, where: 'id = ?', whereArgs: [listId]);
}

// endregion
