import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import '../../entity.dart';
part 'errorentity.g.dart';

@JsonSerializable()
class ErrorEntity extends RespondEntity with _$ErrorEntitySerializerMixin {
  int statusCode;
  String error;

  ErrorEntity();

  factory ErrorEntity.fromJson(Map<String, dynamic> json) =>
      _$ErrorEntityFromJson(json);

  factory ErrorEntity.fromJsonString(String string) =>
      new ErrorEntity.fromJson(json.decode(string));
}
