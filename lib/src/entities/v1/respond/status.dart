import 'dart:convert';
import 'dart:io';
import 'dart:async';

import 'package:json_annotation/json_annotation.dart';
import 'package:html/dom.dart' show Document;

import '../../entity.dart';
import '../../v1/entities.dart';
part 'status.g.dart';

// such serialization... sad.
// enum AppScope { Read, Write, Follow }

@JsonSerializable()
class Status extends RequestEntity with _$StatusSerializerMixin {
  /// (required) The ID of the status
  final String id;

  /// (required) A Fediverse-unique resource ID
  final Uri uri;

  /// (required) URL to the status page (can be remote)
  final Uri url;

  /// (required) The Account which posted the status
  // final Account account;

  /// (optional) null or the ID of the status it replies to
  @JsonKey(includeIfNull: false)
  String in_reply_to_id;

  /// (optional) null or the ID of the account it replies to
  @JsonKey(includeIfNull: false)
  String in_reply_to_account_id;

  /// (optional) null or the reblogged Status
  @JsonKey(includeIfNull: false)
  Status reblog;

  /// (required) Body of the status; this will contain HTML (remote HTML already sanitized)
  // final Document content;

  /// (required) The time the status was created
  final DateTime created_at;

  /// (required) An array of Emoji
  // final Emoji emojis;

  /// (required) The number of reblogs for the status
  final int reblogs_count;

  /// (required) The number of favourites for the status
  final int favourites_count;

  /// (optional) Whether the authenticated user has reblogged the status
  @JsonKey(includeIfNull: false)
  bool reblogged;

  /// (optional) Whether the authenticated user has favourited the status
  @JsonKey(includeIfNull: false)
  bool favourited;

  /// (optional) Whether the authenticated user has muted the conversation this status from
  @JsonKey(includeIfNull: false)
  bool muted;

  /// (required) Whether media attachments should be hidden by default
  final bool sensitive;

  /// (required) If not empty, warning text that should be displayed before the actual content
  final String spoiler_text;

  /// (required) One of: public, unlisted, private, direct
  final String visibility;

  /// (required) An array of Attachments
  // final Attachment media_attachments;

  /// (required) An array of Mentions
  // final Mention mentions;

  /// (required) An array of Tags
  // final Tag tags;

  /// (optional) Application from which the status was posted
  @JsonKey(includeIfNull: false)
  // App application;

  /// (optional) The detected language for the status, if detected
  @JsonKey(includeIfNull: false)
  String language;

  /// (optional) Whether this is the pinned status for the account that posted it
  @JsonKey(includeIfNull: false)
  bool pinned;

  Status({
    this.id,
    this.uri,
    this.url,
    // this.account,
    this.in_reply_to_id = null,
    this.in_reply_to_account_id = null,
    this.reblog = null,
    // this.content,
    this.created_at,
    // this.emojis,
    this.reblogs_count,
    this.favourites_count,
    this.reblogged = null,
    this.favourited = null,
    this.muted = null,
    this.sensitive,
    this.spoiler_text,
    this.visibility,
    // this.media_attachments,
    // this.mentions,
    // this.tags,
    // this.application = null,
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
