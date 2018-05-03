import 'dart:async';

import 'package:ivory_mirinae/ivory_mirinae.dart';

Future main(List<String> args) async {
  var instance_auth = await registerOrLoadApp();
}

Future<AppForInstance> registerOrLoadApp() async {
  try {
    var app_info = new AppInfo(
      client_name: "ivory_mirinae_testapp",
      scopes: ["read", "write", "follow"],
      // [ defaults to ] // redirect_uris: "urn:ietf:wg:oauth:2.0:oob",
      // [ optional    ] // website: "https://sftblw.moe/ivory_mirinae"
    );

    // most apis will throw EntityError when mastodon returns somthing wrong
    var app_for_instance = await Mastodon.appsRegisterOrLoadFromFile(
        instance_url: "https://twingyeo.kr",
        app_info: app_info,
        path: "./.config/app_for_instance.json",
        overwrite: true);
    return app_for_instance;
  } catch (e) {
    print("failed to register app!");
    print(e.toJsonString());
    throw e;
  }
}
