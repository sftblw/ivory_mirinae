import 'package:json_annotation/json_annotation.dart';
import '../../entity.dart';
part 'appauth.g.dart';

@JsonSerializable()
class AppAuth extends ResponseEntity with _$AppAuthSerializerMixin {
  final String id;
  final String client_id;
  final String client_secret;

  AppAuth({this.id, this.client_id, this.client_secret});

  factory AppAuth.fromJson(Map<String, dynamic> json) =>
      _$AppAuthFromJson(json);
}
