import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:json_serializable/json_serializable.dart';
import 'package:json_serializable/type_helper.dart';

import 'custom_type_helpers.dart';

/// custom builder factory of [package:build] and [json_serializable]
Builder jsonSerializableCustom(BuilderOptions options) {
  const List<TypeHelper> customTypeHelpers = const [
    const UriTypeHelper(),
    const BigIntTypeHelper()
  ];

  return new PartBuilder([
    new JsonSerializableGenerator.withDefaultHelpers(customTypeHelpers,
        useWrappers: false),
    const JsonLiteralGenerator()
  ]);
}
