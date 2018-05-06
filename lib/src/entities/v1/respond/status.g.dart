// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

Status _$StatusFromJson(Map<String, dynamic> json) => new Status(
    id: json['id'] as String,
    uri: Uri.parse(json['uri']),
    url: Uri.parse(json['url']),
    in_reply_to_id: json['in_reply_to_id'] as String,
    in_reply_to_account_id: json['in_reply_to_account_id'] as String,
    reblog: json['reblog'] == null
        ? null
        : new Status.fromJson(json['reblog'] as Map<String, dynamic>),
    content: html_parser.parse(json['content']),
    created_at: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    reblogs_count: json['reblogs_count'] as int,
    favourites_count: json['favourites_count'] as int,
    reblogged: json['reblogged'] as bool,
    favourited: json['favourited'] as bool,
    muted: json['muted'] as bool,
    sensitive: json['sensitive'] as bool,
    spoiler_text: json['spoiler_text'] as String,
    visibility: json['visibility'] as String,
    language: json['language'] as String,
    pinned: json['pinned'] as bool);

abstract class _$StatusSerializerMixin {
  String get id;
  Uri get uri;
  Uri get url;
  String get in_reply_to_id;
  String get in_reply_to_account_id;
  Status get reblog;
  Document get content;
  DateTime get created_at;
  int get reblogs_count;
  int get favourites_count;
  bool get reblogged;
  bool get favourited;
  bool get muted;
  bool get sensitive;
  String get spoiler_text;
  String get visibility;
  String get language;
  bool get pinned;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{
      'id': id,
      'uri': uri?.toString(),
      'url': url?.toString(),
    };

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('in_reply_to_id', in_reply_to_id);
    writeNotNull('in_reply_to_account_id', in_reply_to_account_id);
    writeNotNull('reblog', reblog);
    val['content'] = content?.body.innerHtml;
    val['created_at'] = created_at?.toIso8601String();
    val['reblogs_count'] = reblogs_count;
    val['favourites_count'] = favourites_count;
    writeNotNull('reblogged', reblogged);
    writeNotNull('favourited', favourited);
    writeNotNull('muted', muted);
    val['sensitive'] = sensitive;
    val['spoiler_text'] = spoiler_text;
    val['visibility'] = visibility;
    writeNotNull('language', language);
    writeNotNull('pinned', pinned);
    return val;
  }
}
