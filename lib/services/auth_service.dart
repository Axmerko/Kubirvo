import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';
import 'package:kubirovacka_one/enums/jwt_claim_type.dart';
import 'package:kubirovacka_one/models/jwt_token.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../helpers/prefs_names.dart';

final getIt = GetIt.instance;

class AuthService {
  final _prefs = getIt.get<SharedPreferences>();
  String? _groupId;

  Future setAuthToken(JwtToken token) async {
    await _prefs.setString(sharedPrefsKeyAuthToken, token.token);
    await _prefs.setString(sharedPrefsKeyAuthTokenExpiration, token.expiration.toString());
  }

  JwtToken? getAuthToken() {
    final token = _prefs.getString(sharedPrefsKeyAuthToken);
    final expiration = _prefs.getString(sharedPrefsKeyAuthTokenExpiration);
    if (token == null || expiration == null) {
      return null;
    }
    final expirationDate = DateTime.parse(expiration);
    if (expirationDate.isBefore(DateTime.now())) {
      clearAuthToken();
      return null;
    }

    return JwtToken(token: token, expiration: expirationDate);
  }

  void clearAuthToken() {
    _prefs.remove(sharedPrefsKeyAuthToken);
    _prefs.remove(sharedPrefsKeyAuthTokenExpiration);
  }

  void logout() {
    clearAuthToken();
  }

  bool isLoggedIn() {
    return getAuthToken() != null;
  }

  bool isPremium() {
    var expirationDate = getPremiumExpiration();
    var utcNow = DateTime.now().toUtc();

    var isAfter = expirationDate.isAfter(utcNow);

    return isAfter;
  }

  DateTime getPremiumExpiration() {
    final token = getAuthToken();
    if (token == null) {
      return DateTime.now();
    }

    var claim = token.getClaim(JwtClaimType.premium_expiration_date);

    // Convert from "06/29/2025 23:49:26 +02:00" to "2025-06-29T23:49:26+02:00"
    final parts = claim.split(RegExp(r'[ /:]| '));
    if (parts.length < 7) {
      throw FormatException('Unexpected date format: $claim');
    }

    final isoString =
        '${parts[2]}-${parts[0].padLeft(2, '0')}-${parts[1].padLeft(2, '0')}T'
        '${parts[3].padLeft(2, '0')}:${parts[4].padLeft(2, '0')}:${parts[5].padLeft(2, '0')} '
        '${parts.sublist(6).join()}';

    return DateTime.parse(isoString.trim()).toUtc();
  }

  void setGroupId(String groupId) {
    _groupId = groupId;
  }

  String? getGroupId() {
    return _groupId;
  }
}
