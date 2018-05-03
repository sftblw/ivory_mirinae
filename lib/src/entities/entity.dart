import 'dart:async';
import 'dart:io';

import 'dart:convert' show json;

// interface for JSON-serializable mastodon api entities
abstract class Entity {
  Map<String, dynamic> toJson();
  String toJsonString() => json.encode(toJson());
  Future saveToFile(String path, [bool overwrite = true]) async {
    var file = new File(path);
    if (!await file.exists()) {
      await file.create(recursive: true);
    } else if (!overwrite) {
      return;
    }
    await file.open();
    await file.writeAsString(this.toJsonString());
  }
}

abstract class RequestEntity extends Entity {}

abstract class RespondEntity extends Entity {}
