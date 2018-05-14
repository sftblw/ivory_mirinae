// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

Status _$StatusFromJson(Map<String, dynamic> json) => new Status(
    id: json['id'] as String,
    uri: ((json['uri'] != null) ? Uri.parse(json['uri']) : null),
    url: ((json['url'] != null) ? Uri.parse(json['url']) : null),
    account: json['account'] == null
        ? null
        : new Account.fromJson(json['account'] as Map<String, dynamic>),
    in_reply_to_id: json['in_reply_to_id'] as String,
    in_reply_to_account_id: json['in_reply_to_account_id'] as String,
    reblog: json['reblog'] == null
        ? null
        : new Status.fromJson(json['reblog'] as Map<String, dynamic>),
    content:
        ((json['content'] != null) ? html_parser.parse(json['content']) : null),
    created_at: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    emojis: (json['emojis'] as List)
        ?.map((e) =>
            e == null ? null : new Emoji.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    reblogs_count: json['reblogs_count'] as int,
    favourites_count: json['favourites_count'] as int,
    reblogged: json['reblogged'] as bool,
    favourited: json['favourited'] as bool,
    muted: json['muted'] as bool,
    sensitive: json['sensitive'] as bool,
    spoiler_text: json['spoiler_text'] as String,
    visibility: json['visibility'] as String,
    media_attachments: (json['media_attachments'] as List)
        ?.map((e) => e == null
            ? null
            : new Attachment.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    mentions: (json['mentions'] as List)
        ?.map((e) =>
            e == null ? null : new Mention.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    tags: (json['tags'] as List)
        ?.map((e) =>
            e == null ? null : new Tag.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    application: json['application'] == null
        ? null
        : new Application.fromJson(json['application'] as Map<String, dynamic>),
    language: json['language'] as String,
    pinned: json['pinned'] as bool);

abstract class _$StatusSerializerMixin {
  String get id;
  Uri get uri;
  Uri get url;
  Account get account;
  String get in_reply_to_id;
  String get in_reply_to_account_id;
  Status get reblog;
  Document get content;
  DateTime get created_at;
  List<Emoji> get emojis;
  int get reblogs_count;
  int get favourites_count;
  bool get reblogged;
  bool get favourited;
  bool get muted;
  bool get sensitive;
  String get spoiler_text;
  String get visibility;
  List<Attachment> get media_attachments;
  List<Mention> get mentions;
  List<Tag> get tags;
  Application get application;
  String get language;
  bool get pinned;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{
      'id': id,
      'uri': uri?.toString(),
      'url': url?.toString(),
      'account': account,
    };

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('in_reply_to_id', in_reply_to_id);
    writeNotNull('in_reply_to_account_id', in_reply_to_account_id);
    writeNotNull('reblog', reblog);
    val['content'] = content?.body?.innerHtml;
    val['created_at'] = created_at?.toIso8601String();
    val['emojis'] = emojis;
    val['reblogs_count'] = reblogs_count;
    val['favourites_count'] = favourites_count;
    writeNotNull('reblogged', reblogged);
    writeNotNull('favourited', favourited);
    writeNotNull('muted', muted);
    val['sensitive'] = sensitive;
    val['spoiler_text'] = spoiler_text;
    val['visibility'] = visibility;
    val['media_attachments'] = media_attachments;
    val['mentions'] = mentions;
    val['tags'] = tags;
    writeNotNull('application', application);
    writeNotNull('language', language);
    writeNotNull('pinned', pinned);
    return val;
  }
}
