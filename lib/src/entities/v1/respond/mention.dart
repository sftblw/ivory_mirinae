import 'dart:convert';
import 'dart:io';
import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import '../../entity.dart';
part 'mention.g.dart';

@JsonSerializable()
class Mention extends RespondEntity with _$MentionSerializerMixin {
  /// (required) URL of user's profile (can be remote)
  final Uri url;

  /// (required) The username of the account
  final String username;

  /// (required) Equals
  final String acct;

  /// (required) Account ID
  final String id;

  Mention({this.url, this.username, this.acct, this.id});

  factory Mention.fromJson(Map<String, dynamic> json) =>
      _$MentionFromJson(json);

  factory Mention.fromJsonString(String string) =>
      new Mention.fromJson(json.decode(string));

  static Future<Mention> loadFromFile(String path) async {
    var file = new File(path);
    return ((await file.exists()) == true)
        ? (new Mention.fromJsonString(await file.readAsString()))
        : (null);
  }
}
