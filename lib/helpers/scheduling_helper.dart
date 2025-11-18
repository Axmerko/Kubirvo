import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:kubirovacka_one/apis/api_client.dart';

import '../services/auth_service.dart';
import 'connection_helper.dart';

final getIt = GetIt.instance;

Timer makePeriodicTimer(Duration duration, void Function() callback,
    {bool fireNow = false, bool onlyWhenOnline = false, bool onlyWhenAuthCompleted = false, bool onlyIfPremium = false, Duration? fireNowWithDelay}) {

  final apiClient = getIt.get<ApiClient>();
  final authService = getIt.get<AuthService>();

  checkedCallback() async {
    if(onlyWhenOnline) {
      var isConnected = await isOnline();
      if (!isConnected) {
        return;
      }
    }

    if(onlyWhenAuthCompleted) {
      final isAuthFinished = apiClient.hasGroup();
      if (!isAuthFinished) {
        return;
      }
    }

    if(onlyIfPremium) {
      if (!authService.isPremium()) {
        return;
      }
    }

    callback();
  }

  var timer = Timer.periodic(duration, (timer) async {
    checkedCallback();
  });

  if (fireNow) {
    if (fireNowWithDelay != null) {
      Timer(fireNowWithDelay, () {
        checkedCallback();
      });
    } else {
      checkedCallback();
    }
  }
  return timer;
}