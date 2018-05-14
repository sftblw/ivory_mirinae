import 'dart:convert';
import 'dart:io';
import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import '../../entity.dart';
part 'attachment.g.dart';

@JsonSerializable()
class Attachment extends RespondEntity with _$AttachmentSerializerMixin {
  /// (required) ID of the attachment
  final String id;

  /// (required) One of: image, video, gifv, unknown
  final String type;

  /// (required) URL of the locally hosted version of the image
  final Uri url;

  /// (optional) For remote images, the remote URL of the original image
  @JsonKey(includeIfNull: false)
  Uri remote_url;

  /// (required) URL of the preview image
  final Uri preview_url;

  /// (optional) Shorter URL for the image, for insertion into text (only present on local images)
  @JsonKey(includeIfNull: false)
  Uri text_url;

  /// (optional) May contain small and original (referring to the preview and the original file).
  /// Images may contain width, height, size, aspect,
  /// while videos (including GIFV) may contain width, height, frame_rate, duration and bitrate.
  /// There may be another top-level object, focus with the coordinates x and y.
  /// These coordinates can be used for smart thumbnail cropping, see this for reference.
  /// Note: When the type is unknown, it is likely only remote_url is available and local url is missing
  ///
  /// This library does nothing with this argument yet.
  /// TODO: handle meta types
  @JsonKey(includeIfNull: false)
  dynamic meta;

  /// (optional) A description of the image for the visually impaired (maximum 420 characters), or
  @JsonKey(includeIfNull: false)
  String description;

  Attachment(
      {this.id,
      this.type,
      this.url,
      this.remote_url = null,
      this.preview_url,
      this.text_url = null,
      this.meta = null,
      this.description = null});

  factory Attachment.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFromJson(json);

  factory Attachment.fromJsonString(String string) =>
      new Attachment.fromJson(json.decode(string));

  static Future<Attachment> loadFromFile(String path) async {
    var file = new File(path);
    return ((await file.exists()) == true)
        ? (new Attachment.fromJsonString(await file.readAsString()))
        : (null);
  }
}
