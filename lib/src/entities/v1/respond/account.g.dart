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
    note: json['note'] as String,
    url: Uri.parse(json['url']),
    avatar: Uri.parse(json['avatar']),
    avatar_static: Uri.parse(json['avatar_static']),
    header: Uri.parse(json['header']),
    header_static: Uri.parse(json['header_static']),
    moved: json['moved'] as bool);

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
  String get note;
  Uri get url;
  Uri get avatar;
  Uri get avatar_static;
  Uri get header;
  Uri get header_static;
  bool get moved;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'username': username,
        'acct': acct,
        'display_name': display_name,
        'locked': locked,
        'created_at': created_at?.toIso8601String(),
        'followers_count': followers_count,
        'following_count': following_count,
        'statuses_count': statuses_count,
        'note': note,
        'url': url?.toString(),
        'avatar': avatar?.toString(),
        'avatar_static': avatar_static?.toString(),
        'header': header?.toString(),
        'header_static': header_static?.toString(),
        'moved': moved
      };
}
