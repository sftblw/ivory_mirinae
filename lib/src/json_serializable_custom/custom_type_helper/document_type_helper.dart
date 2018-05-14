import 'package:analyzer/dart/element/type.dart';
import 'package:source_gen/source_gen.dart' show TypeChecker;

import 'package:json_serializable/type_helper.dart';

import 'package:html/dom.dart' show Document;

class DocumentTypeHelper extends TypeHelper {
  const DocumentTypeHelper();

  @override
  String serialize(
      DartType targetType, String expression, SerializeContext context) {
    if (!_matchesType(targetType)) {
      return null;
    }
    String nulldot = "${context.nullable ? "?" : ""}.";
    return "$expression${nulldot}body${nulldot}innerHtml";
  }

  @override
  String deserialize(
      DartType targetType, String expression, DeserializeContext context) {
    if (!_matchesType(targetType)) {
      return null;
    }

    if (context.nullable == true) {
      return "(($expression != null) ? html_parser.parse($expression) : null)";
    }
    return "html_parser.parse($expression)";
  }
}

bool _matchesType(DartType type) {
  return const TypeChecker.fromRuntime(Document).isExactlyType(type);
}
