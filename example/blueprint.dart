import 'dart:async';

import 'package:ivory_mirinae/ivory_mirinae.dart';

Future main(List<String> args) async {
  var instance_auth =
      await registerOrLoadApp("./.config/app_for_instance.json");
  var account_auth = await loginOrLoadAccount(
      instance_auth, "./.config/account_auth.json",
      username: "", password: "");
  var mastodon = new Mastodon.fromPacked(instance_auth, account_auth);

  Status status_got = await mastodon.statusesGet("99999337389821650");
  print(status_got.toJsonString());

  Status status_posted = await mastodon.statusesPost(new StatusPost(
      status: "Hello from ivory_mirinae in dev!",
      visibility: "direct",
      in_reply_to_id: "99999337389821650"));
  print(status_posted.toJsonString());
}

Future<AppForInstance> registerOrLoadApp(String path) async {
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
        path: path,
        overwrite: true);
    return app_for_instance;
  } catch (e) {
    print("failed to register app!");
    print(e.toJsonString());
    throw e;
  }
}

Future<AccountAuth> loginOrLoadAccount(
    AppForInstance instance_auth, String path,
    {String username, String password}) async {
  // try {
  var account_auth = await AccountAuth.loadFromFile(path);

  if (account_auth == null) {
    var credentials = await Mastodon.oauth2ByPasswordFromPacked(
        instance_auth: instance_auth, username: username, password: password);

    account_auth = new AccountAuth(credentials);
    account_auth.saveToFile(path, true);
    return account_auth;
  } else {
    return account_auth;
  }
  // } catch (e) {
  //   throw e;
  // }
}
