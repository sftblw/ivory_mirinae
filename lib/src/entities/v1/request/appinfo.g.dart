// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appinfo.dart';

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
  List<String> get scopes;
  String get website;
  Map<String, dynamic> toJson() => new _$AppInfoJsonMapWrapper(this);
}

class _$AppInfoJsonMapWrapper extends $JsonMapWrapper {
  final _$AppInfoSerializerMixin _v;
  _$AppInfoJsonMapWrapper(this._v);

  @override
  Iterable<String> get keys sync* {
    yield 'client_name';
    yield 'redirect_uris';
    yield 'scopes';
    if (_v.website != null) {
      yield 'website';
    }
  }

  @override
  dynamic operator [](Object key) {
    if (key is String) {
      switch (key) {
        case 'client_name':
          return _v.client_name;
        case 'redirect_uris':
          return _v.redirect_uris;
        case 'scopes':
          return _v.scopes;
        case 'website':
          return _v.website;
      }
    }
    return null;
  }
}
