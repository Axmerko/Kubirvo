import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:kubirovacka_one/components/premium_dialog/premium_dialog.dart';
import 'package:kubirovacka_one/services/auth_service.dart';

final getIt = GetIt.instance;
final authService = getIt.get<AuthService>();

void doIfPremium(BuildContext context, {required Function() ifPremium, Function()? ifNotPremium}) {
  if (authService.isPremium()) {
    ifPremium();
  } else {
    ifNotPremium?.call();
    showDialog(
        context: context,
        builder: (context) {
          return const PremiumDialog();
        });
  }
}
