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

  /// (required) The ID of the account
  final String id;

  /// (required) The username of the account
  final String username;

  /// (required) Equals username for local users; includes @domain for remote ones
  final String acct;

  /// (required) The account's display name
  final String display_name;

  /// (required) Boolean for when the account cannot be followed without waiting for approval first
  final bool locked;

  /// (required) The time the account was created
  final DateTime created_at;

  /// (required) The number of followers for the account
  final int followers_count;

  /// (required) The number of accounts the given account is following
  final int following_count;

  /// (required) The number of statuses the account has made
  final int statuses_count;

  /// (required) Biography of user
  final Document note;

  /// (required) URL of the user's profile page (can be remote)
  final String url;

  /// (required) URL to the avatar image
  final Uri avatar;

  /// (required) URL to the avatar static image (gif)
  final Uri avatar_static;

  /// (required) URL to the header image
  final Uri header;

  /// (required) URL to the header static image (gif)
  final Uri header_static;

  /// (optional) If the owner decided to switch accounts; new account is in this attribute
  @JsonKey(includeIfNull: false)
  String moved;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  factory Account.fromJsonString(String string) =>
      new Account.fromJson(json.decode(string));
}
