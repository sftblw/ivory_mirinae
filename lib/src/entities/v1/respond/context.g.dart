// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'context.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

Context _$ContextFromJson(Map<String, dynamic> json) => new Context(
    ancestors: (json['ancestors'] as List)
        ?.map((e) =>
            e == null ? null : new Status.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    desendants: (json['desendants'] as List)
        ?.map((e) =>
            e == null ? null : new Status.fromJson(e as Map<String, dynamic>))
        ?.toList());

abstract class _$ContextSerializerMixin {
  List<Status> get ancestors;
  List<Status> get desendants;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'ancestors': ancestors, 'desendants': desendants};
}
