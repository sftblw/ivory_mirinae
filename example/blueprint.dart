import 'dart:async';
import 'package:ivory_mirinae/ivory_mirinae.dart';

Future main(List<String> args) async {
  var inst_auth = null; // TODO: read from cache
  var user_auth = null; // TODO: read from cache

  var app_info = new AppInfo(
    client_name: "ivory_mirinae_testapp",
    // redirect_uris: "urn:ietf:wg:oauth:2.0:oob",
    scopes: [AppScope.Read, AppScope.Write, AppScope.Follow],
    // website: "https://sftblw.moe/ivory_mirinae"
  );

  try {
    AppAuth auth = await Mastodon.apps(
        instance_url: "https://twingyeo.kr", app_info: app_info);

    print("success");
    print(auth.toJson());
  } catch (e) {
    print("failed");
    print(e.toJson());
  }
}
