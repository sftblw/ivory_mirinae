import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import '../../entity.dart';

import 'package:html/parser.dart' as html_parser;
import 'package:html/dom.dart' show Document;

part 'account.g.dart';

@JsonSerializable()
class Account extends RespondEntity with _$AccountSerializerMixin {
  Account({
    this.id,
    this.username,
    this.acct,
    this.display_name,
    this.locked,
    this.created_at,
    this.followers_count,
    this.following_count,
    this.statuses_count,
    this.note,
    this.url,
    this.avatar,
    this.avatar_static,
    this.header,
    this.header_static,
    this.moved = null,
  });

  /// (required)
  final String id;

  /// (required)
  final String username;

  /// (required)
  final String acct;

  /// (required)
  final String display_name;

  /// (required)
  final bool locked;

  /// (required)
  final DateTime created_at;

  /// (required)
  final int followers_count;

  /// (required)
  final int following_count;

  /// (required)
  final int statuses_count;

  /// (required)
  final Document note;

  /// (required)
  final String url;

  /// (required)
  final Uri avatar;

  /// (required)
  final Uri avatar_static;

  /// (required)
  final Uri header;

  /// (required)
  final Uri header_static;

  /// (optional)
  @JsonKey(includeIfNull: false)
  String moved;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  factory Account.fromJsonString(String string) =>
      new Account.fromJson(json.decode(string));
}
