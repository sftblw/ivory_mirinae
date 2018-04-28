import 'dart:async';
import 'dart:io';

import 'package:ivory_mirinae/ivory_mirinae.dart';

Future main(List<String> args) async {
  AppInfo app_info = null;
  AppAuth app_auth = null;

  // loadFromFile, saveToFile is only supported by types [AppInfo, AppAuth, UserInfo, UserAuth]
  app_info = await AppInfo.loadFromFile("./.config/app_info.json");
  app_auth = await AppAuth.loadFromFile("./.config/app_auth.json");

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
      print("failed to register app!");
      print(e.toJsonString());
    }
  }
  app_info.saveToFile("./.config/app_info.json");
  app_auth.saveToFile("./.config/app_auth.json");
}

// Entity loadFromFile(Entity entity, String path) async {}

// Entity saveFile(Entity entity, String path) async {}
