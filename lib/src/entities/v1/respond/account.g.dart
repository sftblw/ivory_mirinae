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
  Map<String, dynamic> toJson() => new _$AccountJsonMapWrapper(this);
}

class _$AccountJsonMapWrapper extends $JsonMapWrapper {
  final _$AccountSerializerMixin _v;
  _$AccountJsonMapWrapper(this._v);

  @override
  Iterable<String> get keys => const [
        'id',
        'username',
        'acct',
        'display_name',
        'locked',
        'created_at',
        'followers_count',
        'following_count',
        'statuses_count',
        'note',
        'url',
        'avatar',
        'avatar_static',
        'header',
        'header_static',
        'moved'
      ];

  @override
  dynamic operator [](Object key) {
    if (key is String) {
      switch (key) {
        case 'id':
          return _v.id;
        case 'username':
          return _v.username;
        case 'acct':
          return _v.acct;
        case 'display_name':
          return _v.display_name;
        case 'locked':
          return _v.locked;
        case 'created_at':
          return _v.created_at?.toIso8601String();
        case 'followers_count':
          return _v.followers_count;
        case 'following_count':
          return _v.following_count;
        case 'statuses_count':
          return _v.statuses_count;
        case 'note':
          return _v.note;
        case 'url':
          return _v.url?.toString();
        case 'avatar':
          return _v.avatar?.toString();
        case 'avatar_static':
          return _v.avatar_static?.toString();
        case 'header':
          return _v.header?.toString();
        case 'header_static':
          return _v.header_static?.toString();
        case 'moved':
          return _v.moved;
      }
    }
    return null;
  }
}
