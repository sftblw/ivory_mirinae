// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mastodon.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

AppInfo _$AppInfoFromJson(Map<String, dynamic> json) => new AppInfo(
    client_name: json['client_name'] as String,
    redirect_uris: json['redirect_uris'] as String,
    scopes: (json['scopes'] as List)
        ?.map((e) => e == null
            ? null
            : AppScope.values.singleWhere((x) => x.toString() == 'AppScope.$e'))
        ?.toList(),
    website: json['website'] as String);

abstract class _$AppInfoSerializerMixin {
  String get client_name;
  String get redirect_uris;
  List<AppScope> get scopes;
  String get website;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'client_name': client_name,
        'redirect_uris': redirect_uris,
        'scopes': scopes
            ?.map((e) => e == null ? null : e.toString().split('.')[1])
            ?.toList(),
        'website': website
      };
}
