import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'entities/v1/entities.dart';
export 'entities/v1/entities.dart';

class Mastodon {
  static Future instanceAuth({String instance_url, AppInfo appinfo}) async {
    return http
        .post('${instance_url}/api/v1/apps',
            headers: {"content-type": "application/json"},
            body: json.encode(appinfo.toJson()))
        .then((response) {
      print(response.statusCode);
      print(response.body.toString());
    });
  }
}

class InstanceAuth {
  final String id;
  final String client_id;
  final String client_secret;

  InstanceAuth({this.id, this.client_id, this.client_secret});
}
