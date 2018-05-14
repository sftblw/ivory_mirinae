// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mention.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

Mention _$MentionFromJson(Map<String, dynamic> json) => new Mention(
    url: ((json['url'] != null) ? Uri.parse(json['url']) : null),
    username: json['username'] as String,
    acct: json['acct'] as String,
    id: json['id'] as String);

abstract class _$MentionSerializerMixin {
  Uri get url;
  String get username;
  String get acct;
  String get id;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url?.toString(),
        'username': username,
        'acct': acct,
        'id': id
      };
}
