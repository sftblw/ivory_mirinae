import 'dart:async';

import 'package:http/http.dart' as http;

class Mastodon {
  static Future instanceAuth({String instance_url, AppInfo appinfo}) async {
    print('${instance_url}/api/v1/apps');
    print(appinfo.buildParam());

    return http
        .post('${instance_url}/api/v1/apps',
            headers: {"content-type": "application/x-www-form-urlencoded"},
            body: appinfo.buildParam())
        .then((response) {
      print(response.statusCode);
      print(response.body.toString());
    });
  }
}

enum AppScope { Read, Write, Follow }

class AppInfo {
  final String client_name;
  final String redirect_uris;
  final List<AppScope> scopes;
  final String website;

  AppInfo(
      {this.client_name,
      this.redirect_uris = "urn:ietf:wg:oauth:2.0:oob",
      this.scopes,
      this.website = null});

  String buildParam() {
    const Map<AppInfo, String> scopeText = const {
      AppScope.Read: "read",
      AppScope.Write: "write",
      AppScope.Follow: "follow"
    };

    String scopes_param =
        scopes.map((scopeItem) => "scopes[]=${scopeText[scopeItem]}").join("&");
    // TODO: replace with Uri
    // https://stackoverflow.com/a/10247302
    // https://api.dartlang.org/stable/1.20.1/dart-core/Uri-class.html
    return "client_name=${client_name}" +
        "&redirect_uris=${redirect_uris}" +
        "&${scopes_param}" +
        ((website != null) ? "&website=${website}" : "");
  }
}

class InstanceAuth {
  final String id;
  final String client_id;
  final String client_secret;

  InstanceAuth({this.id, this.client_id, this.client_secret});
}
