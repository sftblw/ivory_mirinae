import 'dart:async';

import 'package:http/http.dart' as http;

import 'entities/v1/entities.dart';
import 'api/v1/apis.dart' as apis;

/// API access instance
class Mastodon {
  static Future<AppAuth> apps({String instance_url, AppInfo app_info}) async {
    return apis.apps(base_url: instance_url, app_info: app_info);
  }

  final AppAuth app_auth;
  final AppInfo app_info;

  Mastodon(this.app_auth, this.app_info);
}
