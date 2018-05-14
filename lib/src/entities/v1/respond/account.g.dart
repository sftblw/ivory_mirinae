// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) => new Account(
    id: json['id'] as String,
    username: json['username'] as String,
    acct: json['acct'] as String,
    display_name: json['display_name'] as String,
    locked: json['locked'] as bool,
    created_at: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    followers_count: json['followers_count'] as int,
    following_count: json['following_count'] as int,
    statuses_count: json['statuses_count'] as int,
    note: ((json['note'] != null) ? html_parser.parse(json['note']) : null),
    url: json['url'] as String,
    avatar: ((json['avatar'] != null) ? Uri.parse(json['avatar']) : null),
    avatar_static: ((json['avatar_static'] != null)
        ? Uri.parse(json['avatar_static'])
        : null),
    header: ((json['header'] != null) ? Uri.parse(json['header']) : null),
    header_static: ((json['header_static'] != null)
        ? Uri.parse(json['header_static'])
        : null),
    moved: json['moved'] as String);

abstract class _$AccountSerializerMixin {
  String get id;
  String get username;
  String get acct;
  String get display_name;
  bool get locked;
  DateTime get created_at;
  int get followers_count;
  int get following_count;
  int get statuses_count;
  Document get note;
  String get url;
  Uri get avatar;
  Uri get avatar_static;
  Uri get header;
  Uri get header_static;
  String get moved;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{
      'id': id,
      'username': username,
      'acct': acct,
      'display_name': display_name,
      'locked': locked,
      'created_at': created_at?.toIso8601String(),
      'followers_count': followers_count,
      'following_count': following_count,
      'statuses_count': statuses_count,
      'note': note?.body?.innerHtml,
      'url': url,
      'avatar': avatar?.toString(),
      'avatar_static': avatar_static?.toString(),
      'header': header?.toString(),
      'header_static': header_static?.toString(),
    };

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('moved', moved);
    return val;
  }
}
