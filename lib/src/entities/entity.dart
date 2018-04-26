// interface for JSON-serializable mastodon api entities
abstract class Entity {
  Map<String, dynamic> toJson();
}

abstract class RequestEntity extends Entity {}

abstract class RespondEntity extends Entity {}
