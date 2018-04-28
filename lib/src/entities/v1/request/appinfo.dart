import 'dart:convert';
import 'dart:io';
import 'dart:async';

import 'package:json_annotation/json_annotation.dart';
import '../../entity.dart';
part 'appinfo.g.dart';

// such serialization... sad.
// enum AppScope { Read, Write, Follow }

@JsonSerializable()
class AppInfo extends RequestEntity with _$AppInfoSerializerMixin {
  final String client_name;
  final String redirect_uris;
  final List<String> scopes;

  @JsonKey(includeIfNull: false)
  final String website; // nullable

  AppInfo({
    this.client_name,
    this.redirect_uris = "urn:ietf:wg:oauth:2.0:oob",
    this.scopes,
    this.website = null,
  });

  factory AppInfo.fromJson(Map<String, dynamic> json) =>
      _$AppInfoFromJson(json);

  factory AppInfo.fromJsonString(String string) =>
      new AppInfo.fromJson(json.decode(string));

  static Future<AppInfo> loadFromFile(String path) async {
    var file = new File(path);
    return ((await file.exists()) == true)
        ? (new AppInfo.fromJsonString(await file.readAsString()))
        : (null);
  }
}
