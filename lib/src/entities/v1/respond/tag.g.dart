// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

Tag _$TagFromJson(Map<String, dynamic> json) => new Tag(
    name: json['name'] as String,
    url: ((json['url'] != null) ? Uri.parse(json['url']) : null));

abstract class _$TagSerializerMixin {
  String get name;
  Uri get url;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'name': name, 'url': url?.toString()};
}
