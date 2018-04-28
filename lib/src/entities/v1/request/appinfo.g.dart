// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appinfo.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

AppInfo _$AppInfoFromJson(Map<String, dynamic> json) => new AppInfo(
    client_name: json['client_name'] as String,
    redirect_uris: json['redirect_uris'] as String,
    scopes: (json['scopes'] as List)?.map((e) => e as String)?.toList(),
    website: json['website'] as String);

abstract class _$AppInfoSerializerMixin {
  String get client_name;
  String get redirect_uris;
  List<String> get scopes;
  String get website;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{
      'client_name': client_name,
      'redirect_uris': redirect_uris,
      'scopes': scopes,
    };

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('website', website);
    return val;
  }
}
