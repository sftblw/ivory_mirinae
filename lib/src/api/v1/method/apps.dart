import 'dart:convert';
import 'dart:async';

import '../../endpoint.dart';
import '../../../entities/v1/entities.dart';

const _prefix = '/api/v1/apps';

const _Apps apps = const _Apps();

class _Apps extends Endpoint {
  const _Apps() : super(method: HttpMethod.POST, url: _prefix);

  Future<AppAuth> call({String base_url, AppInfo app_info}) async {
    return new AppAuth.fromJson(json.decode(await accessEndpoint(
        instance_url: base_url, body_json: app_info.toJson())));
  }
}
