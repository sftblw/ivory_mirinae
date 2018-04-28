import 'dart:convert';
import 'dart:io';
import 'dart:async';

import 'package:json_annotation/json_annotation.dart';
import '../../entity.dart';
part 'appauth.g.dart';

@JsonSerializable()
class AppAuth extends RespondEntity with _$AppAuthSerializerMixin {
  final String id;
  final String client_id;
  final String client_secret;

  AppAuth({this.id, this.client_id, this.client_secret});

  factory AppAuth.fromJson(Map<String, dynamic> json) =>
      _$AppAuthFromJson(json);

  factory AppAuth.fromJsonString(String string) =>
      new AppAuth.fromJson(json.decode(string));

  static Future<AppAuth> loadFromFile(String path) async {
    var file = new File(path);
    return ((await file.exists()) == true)
        ? (new AppAuth.fromJsonString(await file.readAsString()))
        : (null);
  }
}
