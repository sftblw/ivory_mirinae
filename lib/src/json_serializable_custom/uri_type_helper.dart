import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';

import 'package:source_gen/source_gen.dart' show TypeChecker;

import 'package:json_serializable/type_helper.dart';

class UriTypeHelper extends TypeHelper {
  const UriTypeHelper();

  @override
  String serialize(
      DartType targetType, String expression, SerializeContext context) {
    print("wow such typehelper");
    if (!_matchesType(targetType)) {
      return null;
    }
    return "$expression${context.nullable ? "?" : ""}.toString()";
  }

  @override
  String deserialize(
      DartType targetType, String expression, DeserializeContext context) {
    print("wow such typehelper");
    if (!_matchesType(targetType)) {
      return null;
    }
    return "Uri.parse($expression)";
  }
}

bool _matchesType(DartType type) {
  return const TypeChecker.fromRuntime(Uri).isExactlyType(type);
}

// bool _matchesType(DartType type) =>
//     const TypeChecker.fromUrl('dart:core#DateTime').isExactlyType(type);
