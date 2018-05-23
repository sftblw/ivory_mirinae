import 'dart:convert';
import 'dart:io';
import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'package:html/parser.dart' as html_parser;
import 'package:html/dom.dart' show Document;

import '../../entity.dart';
part 'card.g.dart';

@JsonSerializable()
class Card extends RespondEntity with _$CardSerializerMixin {
  /// (required)
  final Uri url;

  /// (required)
  final String title;

  /// (required)
  final String description;

  /// (optional)
  @JsonKey(includeIfNull: false)
  Uri image;

  /// (required)
  final String type;

  /// (optional)
  @JsonKey(includeIfNull: false)
  String author_name;

  /// (optional)
  @JsonKey(includeIfNull: false)
  Uri author_url;

  /// (optional)
  @JsonKey(includeIfNull: false)
  String provider_name;

  /// (optional)
  ///
  ///
  @JsonKey(includeIfNull: false)
  Uri provider_url;

  /// (optional)
  @JsonKey(includeIfNull: false)
  Document html;

  /// (optional)
  @JsonKey(includeIfNull: false)
  int width;

  /// (optional)
  @JsonKey(includeIfNull: false)
  int height;

  Card({
    this.url,
    this.title,
    this.description,
    this.image = null,
    this.type,
    this.author_name = null,
    this.author_url = null,
    this.provider_name = null,
    this.provider_url = null,
    this.html = null,
    this.width = null,
    this.height = null,
  });

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);

  factory Card.fromJsonString(String string) =>
      new Card.fromJson(json.decode(string));

  static Future<Card> loadFromFile(String path) async {
    var file = new File(path);
    return ((await file.exists()) == true)
        ? (new Card.fromJsonString(await file.readAsString()))
        : (null);
  }
}
