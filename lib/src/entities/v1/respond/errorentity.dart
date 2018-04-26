import 'package:json_annotation/json_annotation.dart';
import '../../entity.dart';
part 'errorentity.g.dart';

@JsonSerializable(createToJson: false)
class ErrorEntity {
  int statusCode;
  String error;

  ErrorEntity();

  factory ErrorEntity.fromJson(Map<String, dynamic> json) =>
      _$ErrorEntityFromJson(json);
}
