import 'package:json_annotation/json_annotation.dart';
import '../../entity.dart';
part 'appinfo.g.dart';

enum AppScope { Read, Write, Follow }

@JsonSerializable()
class AppInfo extends RequestEntity with _$AppInfoSerializerMixin {
  final String client_name;
  final String redirect_uris;
  final List<String> scopes;

  @JsonKey(includeIfNull: false)
  final String website; // nullable

  /// helper to serialize enum to string
  static const Map<AppScope, String> _AppScopeAsTextMap = const {
    AppScope.Read: "read",
    AppScope.Write: "write",
    AppScope.Follow: "follow"
  };

  AppInfo(
      {this.client_name,
      this.redirect_uris = "urn:ietf:wg:oauth:2.0:oob",
      List<AppScope> scopes,
      this.website = null})
      : this.scopes =
            scopes.map((scopeItem) => _AppScopeAsTextMap[scopeItem]).toList();

  factory AppInfo.fromJson(Map<String, dynamic> json) =>
      _$AppInfoFromJson(json);
}
