// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

Attachment _$AttachmentFromJson(Map<String, dynamic> json) => new Attachment(
    id: json['id'] as String,
    type: json['type'] as String,
    url: Uri.parse(json['url']),
    remote_url: Uri.parse(json['remote_url']),
    preview_url: Uri.parse(json['preview_url']),
    text_url: Uri.parse(json['text_url']),
    meta: json['meta'] as String,
    description: json['description'] as String);

abstract class _$AttachmentSerializerMixin {
  String get id;
  String get type;
  Uri get url;
  Uri get remote_url;
  Uri get preview_url;
  Uri get text_url;
  String get meta;
  String get description;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{
      'id': id,
      'type': type,
      'url': url?.toString(),
    };

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('remote_url', remote_url?.toString());
    val['preview_url'] = preview_url?.toString();
    writeNotNull('text_url', text_url?.toString());
    writeNotNull('meta', meta);
    writeNotNull('description', description);
    return val;
  }
}
