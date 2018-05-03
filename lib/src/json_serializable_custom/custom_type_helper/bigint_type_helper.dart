// import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';

import 'package:source_gen/source_gen.dart' show TypeChecker;

import 'package:json_serializable/type_helper.dart';

class BigIntTypeHelper extends TypeHelper {
  const BigIntTypeHelper();

  @override
  String serialize(
      DartType targetType, String expression, SerializeContext context) {
    if (!_matchesType(targetType)) {
      return null;
    }
    return "$expression${context.nullable ? "?" : ""}.toString()";
  }

  @override
  String deserialize(
      DartType targetType, String expression, DeserializeContext context) {
    if (!_matchesType(targetType)) {
      return null;
    }
    return "BigInt.parse($expression)";
  }
}

bool _matchesType(DartType type) {
  return const TypeChecker.fromRuntime(BigInt).isExactlyType(type);
}

// bool _matchesType(DartType type) =>
//     const TypeChecker.fromUrl('dart:core#DateTime').isExactlyType(type);
