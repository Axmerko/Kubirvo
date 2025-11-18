import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

Future<bool> isOnline() async {
  final connectivityResult = await Connectivity().checkConnectivity();
  return !connectivityResult.contains(ConnectivityResult.none);
}

void showNoInternetSnackbar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text("Nemáte připojení k internetu.", textAlign: TextAlign.center,),
      backgroundColor: warningColor,
    ),
  );
}