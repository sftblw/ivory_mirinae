import 'dart:convert';
import 'dart:io';
import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import '../../entity.dart';
part 'attachment.g.dart';

@JsonSerializable()
class Attachment extends RespondEntity with _$AttachmentSerializerMixin {
  /// (required)
  final String id;

  /// (required)
  final String type;

  /// (required)
  final Uri url;

  /// (optional)
  @JsonKey(includeIfNull: false)
  Uri remote_url;

  /// (required)
  final Uri preview_url;

  /// (optional)
  @JsonKey(includeIfNull: false)
  Uri text_url;

  /// (optional)
  /// This library does nothing with this argument yet.
  /// TODO: handle meta types
  @JsonKey(includeIfNull: false)
  dynamic meta;

  /// (optional)
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
