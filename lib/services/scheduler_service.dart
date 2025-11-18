import 'dart:async';

import 'package:dio/dio.dart';
import 'package:event/event.dart';
import 'package:get_it/get_it.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';
import 'package:kubirovacka_one/events/logs_events.dart';
import 'package:kubirovacka_one/helpers/connection_helper.dart';
import 'package:kubirovacka_one/helpers/persistence_helper.dart';
import 'package:kubirovacka_one/helpers/premium_helper.dart';
import 'package:kubirovacka_one/services/quality_service.dart';

import '../apis/api_client.dart';
import '../events/auth_events.dart';
import '../helpers/scheduling_helper.dart';
import '../models/quality.dart';

final getIt = GetIt.instance;

class SchedulerService {
  final _apiClient = getIt.get<ApiClient>();
  final _qualityService = getIt.get<QualityService>();
  late Timer _qualitySyncTimer;
  late Timer _listSyncTimer;
  late Timer _syncPremiumStatusTimer;
  var _hasPremiumActive = authService.isPremium();

  SchedulerService() {
    scheduleTasks();
    subscribeToEvents();
  }

  void scheduleTasks() {
    _qualitySyncTimer =
        makePeriodicTimer(const Duration(minutes: 2), syncQualities, onlyWhenOnline: true, onlyWhenAuthCompleted: true, onlyIfPremium: true);
    _listSyncTimer = makePeriodicTimer(const Duration(seconds: 30), syncLists, onlyWhenOnline: true, onlyWhenAuthCompleted: true);
  }

  void subscribeToEvents() {
    final userInitCompleteEvent = getIt.get<Event<UserInitCompleteEvent>>();
    final userPurchasedPremiumEvent = getIt.get<Event<UserPurchasedPremiumEvent>>();

    final logListCreatedEvent = getIt.get<Event<LogListCreatedEvent>>();
    final logListEditedEvent = getIt.get<Event<LogListEditedEvent>>();
    final logListLogsChangedEvent = getIt.get<Event<LogListLogsChangedEvent>>();

    userInitCompleteEvent.subscribe((args) => syncQualities());

    userInitCompleteEvent.subscribe((args) => syncLists());
    logListCreatedEvent.subscribe((args) => syncLists());
    logListEditedEvent.subscribe((args) => syncLists());
    logListLogsChangedEvent.subscribe((args) => syncLists());
    userPurchasedPremiumEvent.subscribe((args) {
      _syncPremiumStatusTimer = makePeriodicTimer(const Duration(seconds: 10), syncPremiumStatus, onlyWhenOnline: true, onlyWhenAuthCompleted: true);
    });
  }

  Future syncPremiumStatus() async {
    if (_hasPremiumActive) {
      _syncPremiumStatusTimer.cancel();
      return;
    }

    await _apiClient.api.getGroupApi().apiMainGroupGet(); // run some random fast request to refresh the token and thus even premium status
    var hasPremium = authService.isPremium();
    if (hasPremium != _hasPremiumActive) {
      _hasPremiumActive = hasPremium;
      if (hasPremium) {
        // just became premium, sync qualities immediately
        await syncQualities();
      }
    }
  }

  Future syncQualities() async {
    if (!authService.isPremium()) return;

    var gridDtoBuilder = GridQueryDTOBuilder()
      ..limit = 60
      ..page = 0
      ..sort = 'quality'
      ..order = 'asc';
    var response = await _apiClient.api.getWoodQualityApi().apiMainWoodQualityGridPost(gridQueryDTO: gridDtoBuilder.build());
    if (response.statusCode == 200) {
      _qualityService.setQualities(response.data!.items!.map((e) => Quality(e.quality, e.name)).toList());
    }
  }

  Future syncLists() async {
    log('syncing lists');
    final listsToUpload = await getListsToUpload();

    for (var list in listsToUpload) {
      await syncList(list.id);
    }
  }

  Future syncList(String id) async {
    if (!_apiClient.groupInitialized || !await isOnline()) {
      log('group not initialized or offline, skipping list $id');
      return;
    }

    var list = await getList(id);
    var logs = await getLogs(id);
    var dto = list.toDTO(logs);

    if (list.isCurrentVersionUploaded) return;
    if (list.uploadedAt == null) {
      log('creating list ${list.id}');

      try {
        var response = await _apiClient.api.getLogsListApi().apiMainLogsListPost(woodLogListDTO: dto);
        if (response.statusCode == 200 || response.statusCode == 201 || response.statusCode == 204) {
          log('list ${list.id} created successfully, setting current version uploaded');
          await setListUploadedAtNow(list.id);
          await setListCurrentVersionUploaded(list.id);
        } else {
          log('error creating list ${list.id}. status code: ${response.statusCode}');
        }
      } catch (e) {
        log('error creating list ${list.id}: $e');

        // if status is 409, set list as uploaded
        if (e is DioException) {
          if (e.response?.statusCode == 409) {
            log('list ${list.id} already exists, setting current version uploaded');
            await setListUploadedAtNow(list.id);
            await setListCurrentVersionUploaded(list.id);
          }
        }
      }
    } else {
      log('updating list ${list.id}');

      try {
        var response = await _apiClient.api.getLogsListApi().apiMainLogsListIdPut(id: list.id, woodLogListDTO: dto);
        if (response.statusCode == 200 || response.statusCode == 201 || response.statusCode == 204) {
          log('list ${list.id} updated successfully, setting current version uploaded');
          await setListUploadedAtNow(list.id);
          await setListCurrentVersionUploaded(list.id);
        } else {
          log('error updating list ${list.id}. status code: ${response.statusCode}');
        }
      } catch (e) {
        log('error updating list ${list.id}: $e');
      }
    }
  }
}
