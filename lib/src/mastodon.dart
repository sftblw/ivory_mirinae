import 'dart:async';
import 'entities/v1/entities.dart';
import 'api/v1/apis.dart' as apis;

import 'package:oauth2/oauth2.dart' as oauth2;
export 'package:oauth2/oauth2.dart' show Credentials;

/// API access instance
class Mastodon {
  final String instance_url;
  final AppInfo app_info;
  final AppAuth app_auth;
  final oauth2.Credentials credentials;

  Mastodon(this.instance_url, this.app_info, this.app_auth, this.credentials);

  Mastodon.fromPacked(AppForInstance instance_auth, AccountAuth account_auth)
      : this.instance_url = instance_auth.instance_url,
        this.app_info = instance_auth.app_info,
        this.app_auth = instance_auth.app_auth,
        this.credentials = account_auth.credentials;

  static Future<AppAuth> appsRegister(
      {String instance_url, AppInfo app_info}) async {
    return apis.appsRegister(base_url: instance_url, app_info: app_info);
  }

  // function for easier life™
  // wraps `apps_register`
  static Future<AppForInstance> appsRegisterOrLoadFromFile(
      {String instance_url,
      AppInfo app_info,
      String path,
      bool overwrite = true}) async {
    var app_for_instance = await AppForInstance.loadFromFile(path);

    if (app_for_instance == null) {
      var app_auth =
          await apis.appsRegister(base_url: instance_url, app_info: app_info);
      app_for_instance = new AppForInstance(instance_url, app_info, app_auth);
      app_for_instance.saveToFile(path, overwrite);
    }

    return app_for_instance;
  }

  /// It does oauth login by password.
  /// [username] is email for general mastodon instances, as you know.
  static Future<oauth2.Credentials> oauth2ByPassword(
      {String instance_url,
      AppInfo app_info,
      AppAuth app_auth,
      String username,
      String password}) async {
    var client = await oauth2.resourceOwnerPasswordGrant(
        Uri.parse("${instance_url}/oauth/token"), username, password,
        identifier: app_auth.client_id,
        secret: app_auth.client_secret,
        scopes: app_info.scopes);
    return client.credentials;
  }

  /// easier one for [oauthByPassword]
  /// sadly dart does not support overload.
  static Future<oauth2.Credentials> oauth2ByPasswordFromPacked(
      {AppForInstance instance_auth, String username, String password}) {
    return oauth2ByPassword(
        instance_url: instance_auth.instance_url,
        app_info: instance_auth.app_info,
        app_auth: instance_auth.app_auth,
        password: password,
        username: username);
  }

  // TODO: implement authorization flow
  // https://pub.dartlang.org/packages/oauth2
  // static String oauth2ByAuthCodeUrl() {}
  // static Future<oauth2.Credentials> oauth2ByAuthCode(){}

  // < apis implementation which require app and user info >
  Future<Status> statusesPost(StatusPost status_posting) async =>
      apis.statusesPost(base_url: instance_url, status_posting: status_posting);
}
