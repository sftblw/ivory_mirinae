import 'dart:async';
import 'dart:io';

import 'package:ivory_mirinae/ivory_mirinae.dart';

Future main(List<String> args) async {
  AppInfo app_info = null;
  AppAuth app_auth = null;

  var app_info_file = new File("./.config/app_info.json");
  var app_auth_file = new File("./.config/app_auth.json");
  app_info = ((await app_info_file.exists()) == true)
      ? (new AppInfo.fromJsonString(await app_info_file.readAsString()))
      : (null);
  app_auth = ((await app_auth_file.exists()) == true)
      ? (new AppAuth.fromJsonString(await app_auth_file.readAsString()))
      : (null);

  if (app_info == null || app_auth == null) {
    app_info = new AppInfo(
      client_name: "ivory_mirinae_testapp",
      // redirect_uris: "urn:ietf:wg:oauth:2.0:oob",
      scopes: ["read", "write", "follow"],
      // website: "https://sftblw.moe/ivory_mirinae"
    );

    try {
      app_auth = await Mastodon.apps(
          instance_url: "https://twingyeo.kr", app_info: app_info);
    } catch (e) {
      print("failed to authorize!");
      print(e.toJsonString());
    }
  }

  if (!await app_auth_file.exists()) {
    await app_auth_file.create(recursive: true);
  }
  await app_auth_file.open();
  await app_auth_file.writeAsString(app_auth.toJsonString());

  if (!await app_info_file.exists()) {
    await app_info_file.create(recursive: true);
  }
  await app_info_file.open();
  await app_info_file.writeAsString(app_info.toJsonString());
}

// Entity loadFromFile(Entity entity, String path) async {}

// Entity saveFile(Entity entity, String path) async {}
