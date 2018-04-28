import 'package:json_annotation/json_annotation.dart';
import '../../entity.dart';

part 'account.g.dart';

@JsonSerializable()
class Account extends RespondEntity with _$AccountSerializerMixin {
  Account(
      {this.id,
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
      this.moved});
  final String id;

  /// The ID of the account
  final String username;

  /// The username of the account
  final String acct;

  /// Equals username for local users, includes @domain for remote ones
  final String display_name;

  /// The account's display name
  final bool locked;

  /// Boolean for when the account cannot be followed without waiting for approval first
  final DateTime created_at;

  /// The time the account was created
  final int followers_count;

  /// The number of followers for the account
  final int following_count;

  /// The number of accounts the given account is following
  final int statuses_count;

  /// The number of statuses the account has made
  final String note;

  /// Biography of user
  final Uri url;

  /// URL of the user's profile page (can be remote)
  final Uri avatar;

  /// URL to the avatar image
  final Uri avatar_static;

  /// URL to the avatar static image (gif)
  final Uri header;

  /// URL to the header image
  final Uri header_static;

  /// URL to the header static image (gif)
  bool moved;

  /// If the owner decided to switch accounts, new account is in this attribute

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}
