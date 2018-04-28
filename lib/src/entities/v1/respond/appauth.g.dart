// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appauth.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

AppAuth _$AppAuthFromJson(Map<String, dynamic> json) => new AppAuth(
    id: json['id'] as String,
    client_id: json['client_id'] as String,
    client_secret: json['client_secret'] as String);

abstract class _$AppAuthSerializerMixin {
  String get id;
  String get client_id;
  String get client_secret;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'client_id': client_id,
        'client_secret': client_secret
      };
}
