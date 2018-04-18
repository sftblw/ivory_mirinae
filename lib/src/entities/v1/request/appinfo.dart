import 'package:json_annotation/json_annotation.dart';
part 'appinfo.g.dart';

enum AppScope { Read, Write, Follow }

const Map<AppScope, String> _AppScopeAsTextMap = const {
  AppScope.Read: "read",
  AppScope.Write: "write",
  AppScope.Follow: "follow"
};

@JsonSerializable()
class AppInfo extends Object with _$AppInfoSerializerMixin {
  final String client_name;
  final String redirect_uris;
  final List<String> scopes;

  @JsonKey(includeIfNull: false)
  final String website; // nullable

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
