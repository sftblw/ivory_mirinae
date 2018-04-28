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
  Map<String, dynamic> toJson() => new _$AppAuthJsonMapWrapper(this);
}

class _$AppAuthJsonMapWrapper extends $JsonMapWrapper {
  final _$AppAuthSerializerMixin _v;
  _$AppAuthJsonMapWrapper(this._v);

  @override
  Iterable<String> get keys => const ['id', 'client_id', 'client_secret'];

  @override
  dynamic operator [](Object key) {
    if (key is String) {
      switch (key) {
        case 'id':
          return _v.id;
        case 'client_id':
          return _v.client_id;
        case 'client_secret':
          return _v.client_secret;
      }
    }
    return null;
  }
}
