import 'dart:convert';
import 'dart:io';
import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'package:html/parser.dart' as html_parser;
import 'package:html/dom.dart' show Document;

import '../../entity.dart';
import '../../v1/entities.dart';
// part 'mention.g.dart';

// @JsonSerializable()
class Mention /* extends RespondEntity with _$MentionSerializerMixin */ {
  // factory Mention.fromJson(Map<String, dynamic> json) =>
  //     _$MentionFromJson(json);

  // factory Mention.fromJsonString(String string) =>
  //     new Mention.fromJson(json.decode(string));

  // static Future<Mention> loadFromFile(String path) async {
  //   var file = new File(path);
  //   return ((await file.exists()) == true)
  //       ? (new Mention.fromJsonString(await file.readAsString()))
  //       : (null);
  // }
}
