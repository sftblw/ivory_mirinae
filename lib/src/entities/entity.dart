import 'dart:async';
import 'dart:io';

// interface for JSON-serializable mastodon api entities
abstract class Entity {
  Map<String, dynamic> toJson();
  String toJsonString() => toJson().toString();
  Future saveToFile(String path) async {
    var file = new File(path);
    if (!await file.exists()) {
      await file.create(recursive: true);
    }
    await file.open();
    await file.writeAsString(this.toJsonString());
  }
}

abstract class RequestEntity extends Entity {}

abstract class RespondEntity extends Entity {}
