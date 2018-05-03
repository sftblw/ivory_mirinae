import 'dart:io';
import 'dart:convert' show json;
import 'dart:async';

import 'package:oauth2/oauth2.dart';
import '../../entity.dart';

/// This class smoothly wraps [oauth2.Credentials] for match of serializing API with this library.
/// and makes life much easier™.
///
/// Since toJson() return of ivory_mirinae and oauth2 is different,
/// sadly there's inefficient reverse-jsonify.
class AccountAuth extends Entity {
  final Credentials credentials;

  AccountAuth(this.credentials);

  Map<String, dynamic> toJson() {
    return json.decode(credentials.toJson());
  }

  factory AccountAuth.fromJson(Map<String, dynamic> source) {
    return new AccountAuth(new Credentials.fromJson(json.encode(source)));
  }

  factory AccountAuth.fromJsonString(String jsonString) =>
      new AccountAuth.fromJson(json.decode(jsonString));

  static Future<AccountAuth> loadFromFile(String path) async {
    var file = new File(path);
    return ((await file.exists()) == true)
        ? (new AccountAuth.fromJsonString(await file.readAsString()))
        : (null);
  }
}
