import 'dart:async';

import 'package:http/http.dart' as http;

import 'package:json_annotation/json_annotation.dart';
part 'mastodon.g.dart';

// class Mastodon {
//   static Future instanceAuth({String instance_url, AppInfo appinfo}) async {
//     return http
//         .post('${instance_url}/api/v1/apps',
//             headers: {"content-type": "application/json"},
//             body: appinfo.)
//         .then((response) {
//       print(response.statusCode);
//       print(response.body.toString());
//     });
//   }
// }

enum AppScope { Read, Write, Follow }

@JsonSerializable()
class AppInfo extends Object with _$AppInfoSerializerMixin {
  final String client_name;
  final String redirect_uris;
  final List<AppScope> scopes;

  @JsonKey(nullable: true)
  final String website; // nullable

  AppInfo(
      {this.client_name,
      this.redirect_uris = "urn:ietf:wg:oauth:2.0:oob",
      this.scopes,
      this.website = null});

  factory AppInfo.fromJson(Map<String, dynamic> json) =>
      _$AppInfoFromJson(json);
}

class InstanceAuth {
  final String id;
  final String client_id;
  final String client_secret;

  InstanceAuth({this.id, this.client_id, this.client_secret});
}
