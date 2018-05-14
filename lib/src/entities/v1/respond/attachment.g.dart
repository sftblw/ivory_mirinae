// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

Attachment _$AttachmentFromJson(Map<String, dynamic> json) => new Attachment(
    id: json['id'] as String,
    type: json['type'] as String,
    url: ((json['url'] != null) ? Uri.parse(json['url']) : null),
    remote_url:
        ((json['remote_url'] != null) ? Uri.parse(json['remote_url']) : null),
    preview_url:
        ((json['preview_url'] != null) ? Uri.parse(json['preview_url']) : null),
    text_url: ((json['text_url'] != null) ? Uri.parse(json['text_url']) : null),
    meta: json['meta'],
    description: json['description'] as String);

abstract class _$AttachmentSerializerMixin {
  String get id;
  String get type;
  Uri get url;
  Uri get remote_url;
  Uri get preview_url;
  Uri get text_url;
  dynamic get meta;
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
