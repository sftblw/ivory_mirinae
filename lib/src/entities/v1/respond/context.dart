import 'dart:convert';
import 'dart:io';
import 'dart:async';

import 'package:json_annotation/json_annotation.dart';

import '../../entity.dart';
import '../entities.dart';
part 'context.g.dart';

@JsonSerializable()
class Context extends RespondEntity with _$ContextSerializerMixin {
  /// (required)
  final List<Status> ancestors;

  /// (required)
  final List<Status> desendants;

  Context({this.ancestors, this.desendants});

  factory Context.fromJson(Map<String, dynamic> json) =>
      _$ContextFromJson(json);

  factory Context.fromJsonString(String string) =>
      new Context.fromJson(json.decode(string));

  static Future<Context> loadFromFile(String path) async {
    var file = new File(path);
    return ((await file.exists()) == true)
        ? (new Context.fromJsonString(await file.readAsString()))
        : (null);
  }
}
