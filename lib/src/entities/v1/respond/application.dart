import 'dart:convert';
import 'dart:io';
import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import '../../entity.dart';
part 'application.g.dart';

@JsonSerializable()
class Application extends RespondEntity with _$ApplicationSerializerMixin {
  /// (required) Name of the app
  final String name;

  /// (optional) Homepage URL of the app
  @JsonKey(includeIfNull: false)
  Uri website;

  Application({
    this.name,
    this.website = null,
  });

  factory Application.fromJson(Map<String, dynamic> json) =>
      _$ApplicationFromJson(json);

  factory Application.fromJsonString(String string) =>
      new Application.fromJson(json.decode(string));

  static Future<Application> loadFromFile(String path) async {
    var file = new File(path);
    return ((await file.exists()) == true)
        ? (new Application.fromJsonString(await file.readAsString()))
        : (null);
  }
}
