import 'dart:async';
import 'dart:convert';

// interface for JSON-serializable mastodon api entities
abstract class Entity {
  Map<String, dynamic> toJson();
  String toJsonString() => toJson().toString();
}

abstract class RequestEntity extends Entity {}

abstract class RespondEntity extends Entity {}
