// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_post.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

StatusPost _$StatusPostFromJson(Map<String, dynamic> json) => new StatusPost(
    status: json['status'] as String,
    in_reply_to_id: json['in_reply_to_id'] as String,
    media_ids: (json['media_ids'] as List)?.map((e) => e as String)?.toList(),
    sensitive: json['sensitive'] as bool,
    spoiler_text: json['spoiler_text'] as String,
    visibility: json['visibility'] as String);

abstract class _$StatusPostSerializerMixin {
  String get status;
  String get in_reply_to_id;
  List<String> get media_ids;
  bool get sensitive;
  String get spoiler_text;
  String get visibility;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{
      'status': status,
    };

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('in_reply_to_id', in_reply_to_id);
    writeNotNull('media_ids', media_ids);
    writeNotNull('sensitive', sensitive);
    writeNotNull('spoiler_text', spoiler_text);
    writeNotNull('visibility', visibility);
    return val;
  }
}
