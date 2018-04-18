import 'dart:async';
import 'package:ivory_mirinae/ivory_mirinae.dart';

Future main(List<String> args) async {
  var inst_auth = null; // TODO: read from cache
  var user_auth = null; // TODO: read from cache

  var appInfo = new AppInfo(
    client_name: "ivory_mirinae_testapp",
    // redirect_uris: "urn:ietf:wg:oauth:2.0:oob",
    scopes: [AppScope.Read, AppScope.Write, AppScope.Follow],
    // website: "https://sftblw.moe/ivory_mirinae"
  );
  print(appInfo.toJson());

  // try {
  //   await Mastodon.instanceAuth(
  //       instance_url: "https://twingyeo.kr", appinfo: appInfo);
  //   // user_auth = Mastodon.userAuth(
  //   //   inst_auth: inst_auth,
  //   // );
  // } catch (e) {
  //   print(e.toString());
  // }

  // var mstdn = Mastodon(instance_auth: inst_auth, user_auth: user_auth);
  // Account = Mastodon.ApiList.Account.Fetch(1);
}
