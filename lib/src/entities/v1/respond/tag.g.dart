// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

Tag _$TagFromJson(Map<String, dynamic> json) => new Tag(
    name: (json['name'] as List)?.map((e) => e as String)?.toList(),
    url: Uri.parse(json['url']));

abstract class _$TagSerializerMixin {
  List<String> get name;
  Uri get url;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'name': name, 'url': url?.toString()};
}
