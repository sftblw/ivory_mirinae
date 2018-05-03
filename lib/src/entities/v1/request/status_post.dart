import 'dart:convert';
import 'dart:io';
import 'dart:async';

import 'package:json_annotation/json_annotation.dart';
import '../../entity.dart';
part 'status_post.g.dart';

/// What you want to post.
/// Posting a new status - From data part.
@JsonSerializable()
class StatusPost extends RequestEntity with _$StatusPostSerializerMixin {
  /// (required) The text of the status
  final String status;

  /// (optional) local ID of the status you want to reply to
  @JsonKey(includeIfNull: false)
  final String in_reply_to_id;

  /// (optional) Array of media IDs to attach to the status (maximum 4)
  @JsonKey(includeIfNull: false)
  final List<String> media_ids;

  /// (optional) Set this to mark the media of the status as NSFW
  @JsonKey(includeIfNull: false)
  final bool sensitive;

  /// (optional) Text to be shown as a warning before the actual content
  @JsonKey(includeIfNull: false)
  final String spoiler_text;

  /// (optional) Either "direct", "private", "unlisted" or "public"
  @JsonKey(includeIfNull: false)
  final String visibility;

  StatusPost(
      {this.status,
      this.in_reply_to_id = null,
      this.media_ids = null,
      this.sensitive = null,
      this.spoiler_text = null,
      this.visibility = null});

  factory StatusPost.fromJson(Map<String, dynamic> json) =>
      _$StatusPostFromJson(json);

  factory StatusPost.fromJsonString(String string) =>
      new StatusPost.fromJson(json.decode(string));

  static Future<StatusPost> loadFromFile(String path) async {
    var file = new File(path);
    return ((await file.exists()) == true)
        ? (new StatusPost.fromJsonString(await file.readAsString()))
        : (null);
  }
}
