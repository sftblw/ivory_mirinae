import 'dart:io';
import 'dart:convert' show json;
import 'dart:async';

import 'package:json_annotation/json_annotation.dart';
import '../entities.dart';
import '../../entity.dart';
part 'app_for_instance.g.dart';

/// class for easier life™. wraps AppInfo, AppAuth.
@JsonSerializable()
class AppForInstance extends Entity with _$AppForInstanceSerializerMixin {
  String instance_url;
  AppInfo app_info;
  AppAuth app_auth;
  AppForInstance(this.instance_url, this.app_info, this.app_auth);

  factory AppForInstance.fromJson(Map<String, dynamic> json) =>
      _$AppForInstanceFromJson(json);

  factory AppForInstance.fromJsonString(String jsonString) =>
      new AppForInstance.fromJson(json.decode(jsonString));

  static Future<AppForInstance> loadFromFile(String path) async {
    var file = new File(path);
    return ((await file.exists()) == true)
        ? (new AppForInstance.fromJsonString(await file.readAsString()))
        : (null);
  }
}
