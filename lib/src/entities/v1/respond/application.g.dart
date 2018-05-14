// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

Application _$ApplicationFromJson(Map<String, dynamic> json) => new Application(
    name: json['name'] as String, website: Uri.parse(json['website']));

abstract class _$ApplicationSerializerMixin {
  String get name;
  Uri get website;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{
      'name': name,
    };

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('website', website?.toString());
    return val;
  }
}
