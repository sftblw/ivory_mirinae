// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

Card _$CardFromJson(Map<String, dynamic> json) => new Card(
    url: ((json['url'] != null) ? Uri.parse(json['url']) : null),
    title: json['title'] as String,
    description: json['description'] as String,
    image: ((json['image'] != null) ? Uri.parse(json['image']) : null),
    type: json['type'] as String,
    author_name: json['author_name'] as String,
    author_url:
        ((json['author_url'] != null) ? Uri.parse(json['author_url']) : null),
    provider_name: json['provider_name'] as String,
    provider_url: ((json['provider_url'] != null)
        ? Uri.parse(json['provider_url'])
        : null),
    html: ((json['html'] != null) ? html_parser.parse(json['html']) : null),
    width: json['width'] as int,
    height: json['height'] as int);

abstract class _$CardSerializerMixin {
  Uri get url;
  String get title;
  String get description;
  Uri get image;
  String get type;
  String get author_name;
  Uri get author_url;
  String get provider_name;
  Uri get provider_url;
  Document get html;
  int get width;
  int get height;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{
      'url': url?.toString(),
      'title': title,
      'description': description,
    };

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('image', image?.toString());
    val['type'] = type;
    writeNotNull('author_name', author_name);
    writeNotNull('author_url', author_url?.toString());
    writeNotNull('provider_name', provider_name);
    writeNotNull('provider_url', provider_url?.toString());
    writeNotNull('html', html?.body?.innerHtml);
    writeNotNull('width', width);
    writeNotNull('height', height);
    return val;
  }
}
