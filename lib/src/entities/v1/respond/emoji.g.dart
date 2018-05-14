// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emoji.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

Emoji _$EmojiFromJson(Map<String, dynamic> json) => new Emoji(
    shortcode: json['shortcode'] as String,
    static_url: Uri.parse(json['static_url']),
    url: Uri.parse(json['url']));

abstract class _$EmojiSerializerMixin {
  String get shortcode;
  Uri get static_url;
  Uri get url;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'shortcode': shortcode,
        'static_url': static_url?.toString(),
        'url': url?.toString()
      };
}
