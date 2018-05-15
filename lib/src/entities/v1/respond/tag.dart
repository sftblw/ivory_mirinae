import 'dart:convert';
import 'dart:io';
import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import '../../entity.dart';
part 'tag.g.dart';

@JsonSerializable()
class Tag extends RespondEntity with _$TagSerializerMixin {
  /// (required)
  final String name;

  /// (required)
  final Uri url;

  Tag({
    this.name,
    this.url,
  });

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);

  factory Tag.fromJsonString(String string) =>
      new Tag.fromJson(json.decode(string));

  static Future<Tag> loadFromFile(String path) async {
    var file = new File(path);
    return ((await file.exists()) == true)
        ? (new Tag.fromJsonString(await file.readAsString()))
        : (null);
  }
}
