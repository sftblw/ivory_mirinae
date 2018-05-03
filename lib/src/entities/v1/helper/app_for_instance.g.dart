// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_for_instance.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

AppForInstance _$AppForInstanceFromJson(Map<String, dynamic> json) =>
    new AppForInstance(
        json['instance_url'] as String,
        json['app_info'] == null
            ? null
            : new AppInfo.fromJson(json['app_info'] as Map<String, dynamic>),
        json['app_auth'] == null
            ? null
            : new AppAuth.fromJson(json['app_auth'] as Map<String, dynamic>));

abstract class _$AppForInstanceSerializerMixin {
  String get instance_url;
  AppInfo get app_info;
  AppAuth get app_auth;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'instance_url': instance_url,
        'app_info': app_info,
        'app_auth': app_auth
      };
}
