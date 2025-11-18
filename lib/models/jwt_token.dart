import 'dart:convert';

import 'package:kubirovacka_one/enums/jwt_claim_type.dart';

class JwtToken {
  final String token;
  final DateTime expiration;

  JwtToken({required this.token, required this.expiration});

  factory JwtToken.fromToken(String token) {
    final t = JwtToken(token: token, expiration: DateTime.now());
    return t;
  }

  Map<String, dynamic> getClaims() {
    final parts = token.split('.');
    if (parts.length != 3) {
      throw Exception('invalid token');
    }
    final payload = parts[1];
    final normalized = base64Url.normalize(payload);
    final resp = utf8.decode(base64Url.decode(normalized));
    final claims = json.decode(resp);
    if (claims is! Map<String, dynamic>) {
      throw Exception('invalid token');
    }
    return claims;
  }

  dynamic getClaim(JwtClaimType claim) {
    final claims = getClaims();
    return claims[claim.name];
  }
}
