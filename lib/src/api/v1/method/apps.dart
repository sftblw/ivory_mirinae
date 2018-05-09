import 'dart:convert';
import 'dart:async';

import '../../endpoint.dart';
import '../../../entities/v1/entities.dart';

const _prefix = '/api/v1/apps';

const _AppsRegister appsRegister = const _AppsRegister();

class _AppsRegister extends EndpointPost {
  const _AppsRegister() : super(_prefix);

  Future<AppAuth> call({String base_url, AppInfo app_info}) async {
    var app_info_json = app_info.toJson();
    app_info_json['scopes'] = app_info.scopes.join(" ");

    return new AppAuth.fromJson(json.decode(await accessEndpoint(
        instance_url: base_url, body_json: app_info_json)));
  }
}
