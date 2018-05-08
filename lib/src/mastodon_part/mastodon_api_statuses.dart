part of '../mastodon.dart';

abstract class _$MastodonApiMixin_Statuses {
  String get instance_url;
  AppInfo get app_info;
  AppAuth get app_auth;
  oauth2.Client get client;

  Future<Status> statusesGet(String id) async =>
      apis.statusesGet(client, base_url: instance_url, id: id);

  Future<Status> statusesPost(StatusPost status_posting) async =>
      apis.statusesPost(client,
          base_url: instance_url, status_posting: status_posting);
}
