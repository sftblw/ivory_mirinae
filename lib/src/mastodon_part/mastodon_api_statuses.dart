part of '../mastodon.dart';

abstract class _$MastodonApiMixin_Statuses {
  String get instance_url;
  AppInfo get app_info;
  AppAuth get app_auth;
  oauth2.Client get client;

  Future<Status> statusesGet(String id) async =>
      apis.statusesGet(client, base_url: instance_url, id: id);

  Future<Context> statusesContext(String id) async =>
      apis.statusesContext(client, base_url: instance_url, id: id);

  Future<Card> statusesCard(String id) async =>
      apis.statusesCard(client, base_url: instance_url, id: id);

  Future<List<Account>> statusesRebloggedBy(String id,
          [String max_id = null,
          String since_id = null,
          int limit = null]) async =>
      apis.statusesRebloggedBy(client,
          base_url: instance_url,
          id: id,
          max_id: max_id,
          since_id: since_id,
          limit: limit);

  Future<List<Account>> statusesFavouritedBy(String id,
          [String max_id = null,
          String since_id = null,
          int limit = null]) async =>
      apis.statusesRebloggedBy(client,
          base_url: instance_url,
          id: id,
          max_id: max_id,
          since_id: since_id,
          limit: limit);

  Future<Status> statusesPost(StatusPost status_posting) async =>
      apis.statusesPost(client,
          base_url: instance_url, status_posting: status_posting);

  Future<void> statusesDelete(String id) async =>
      apis.statusesDelete(client, base_url: instance_url, id: id);

  Future<Status> statusesReblog(String id) async =>
      apis.statusesReblog(client, base_url: instance_url, id: id);

  Future<Status> statusesUnreblog(String id) async =>
      apis.statusesUnreblog(client, base_url: instance_url, id: id);

  Future<Status> statusesFavourite(String id) async =>
      apis.statusesFavourite(client, base_url: instance_url, id: id);

  Future<Status> statusesUnfavourite(String id) async =>
      apis.statusesUnfavourite(client, base_url: instance_url, id: id);

  /// see api docs. this api needs caution in its meaning.
  Future<Status> statusesPin(String id) async =>
      apis.statusesPin(client, base_url: instance_url, id: id);

  /// see api docs. this api needs caution in its meaning.
  Future<Status> statusesUnpin(String id) async =>
      apis.statusesUnpin(client, base_url: instance_url, id: id);

  /// see api docs. this api needs caution in its meaning.
  Future<Status> statusesMute(String id) async =>
      apis.statusesMute(client, base_url: instance_url, id: id);

  /// see api docs. this api needs caution in its meaning.
  Future<Status> statusesUnmute(String id) async =>
      apis.statusesUnmute(client, base_url: instance_url, id: id);
}
