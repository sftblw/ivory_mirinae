// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'errorentity.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

ErrorEntity _$ErrorEntityFromJson(Map<String, dynamic> json) =>
    new ErrorEntity()
      ..statusCode = json['statusCode'] as int
      ..error = json['error'] as String;

abstract class _$ErrorEntitySerializerMixin {
  int get statusCode;
  String get error;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'statusCode': statusCode, 'error': error};
}
