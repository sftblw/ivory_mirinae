import 'dart:convert';
import 'dart:io';
import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import '../../entity.dart';
part 'emoji.g.dart';

@JsonSerializable()
class Emoji extends RespondEntity with _$EmojiSerializerMixin {
  /// (required)
  final String shortcode;

  /// (required)
  final Uri static_url;

  /// (required)
  final Uri url;

  Emoji({this.shortcode, this.static_url, this.url});

  factory Emoji.fromJson(Map<String, dynamic> json) => _$EmojiFromJson(json);

  factory Emoji.fromJsonString(String string) =>
      new Emoji.fromJson(json.decode(string));

  static Future<Emoji> loadFromFile(String path) async {
    var file = new File(path);
    return ((await file.exists()) == true)
        ? (new Emoji.fromJsonString(await file.readAsString()))
        : (null);
  }
}
