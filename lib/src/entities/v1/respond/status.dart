import 'dart:convert';
import 'dart:io';
import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import 'package:html/parser.dart' as html_parser;
import 'package:html/dom.dart' show Document;

import '../../entity.dart';
import '../../v1/entities.dart';
part 'status.g.dart';

@JsonSerializable()
class Status extends RespondEntity with _$StatusSerializerMixin {
  /// (required)
  final String id;

  /// (required)
  final Uri uri;

  /// (required)
  final Uri url;

  /// (required)
  final Account account;

  /// (optional)
  @JsonKey(includeIfNull: false)
  String in_reply_to_id;

  /// (optional)
  @JsonKey(includeIfNull: false)
  String in_reply_to_account_id;

  /// (optional)
  @JsonKey(includeIfNull: false)
  Status reblog;

  /// (required)
  final Document content;

  /// (required)
  final DateTime created_at;

  /// (required)
  final List<Emoji> emojis;

  /// (required)
  final int reblogs_count;

  /// (required)
  final int favourites_count;

  /// (optional)
  @JsonKey(includeIfNull: false)
  bool reblogged;

  /// (optional)
  @JsonKey(includeIfNull: false)
  bool favourited;

  /// (optional)
  @JsonKey(includeIfNull: false)
  bool muted;

  /// (required)
  final bool sensitive;

  /// (required)
  final String spoiler_text;

  /// (required)
  final String visibility;

  /// (required)
  final List<Attachment> media_attachments;

  /// (required)
  final List<Mention> mentions;

  /// (required)
  final List<Tag> tags;

  /// (optional)
  @JsonKey(includeIfNull: false)
  Application application;

  /// (optional)
  @JsonKey(includeIfNull: false)
  String language;

  /// (optional)
  @JsonKey(includeIfNull: false)
  bool pinned;

  Status({
    this.id,
    this.uri,
    this.url,
    this.account,
    this.in_reply_to_id = null,
    this.in_reply_to_account_id = null,
    this.reblog = null,
    this.content,
    this.created_at,
    this.emojis,
    this.reblogs_count,
    this.favourites_count,
    this.reblogged = null,
    this.favourited = null,
    this.muted = null,
    this.sensitive,
    this.spoiler_text,
    this.visibility,
    this.media_attachments,
    this.mentions,
    this.tags,
    this.application = null,
    this.language = null,
    this.pinned = null,
  });

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

  factory Status.fromJsonString(String string) =>
      new Status.fromJson(json.decode(string));

  static Future<Status> loadFromFile(String path) async {
    var file = new File(path);
    return ((await file.exists()) == true)
        ? (new Status.fromJsonString(await file.readAsString()))
        : (null);
  }
}
