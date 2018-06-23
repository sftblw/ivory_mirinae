import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;

import '../../endpoint.dart';
import '../../../entities/v1/entities.dart';

const _prefix = '/api/v1/statuses';

const _StatusesGet statusesGet = const _StatusesGet();
const _StatusesContext statusesContext = const _StatusesContext();
const _StatusesCard statusesCard = const _StatusesCard();
const _StatusesRebloggedBy statusesRebloggedBy = const _StatusesRebloggedBy();
const _StatusesFavouritedBy statusesFavouritedBy =
    const _StatusesFavouritedBy();
const _StatusesPost statusesPost = const _StatusesPost();
const _StatusesDelete statusesDelete = const _StatusesDelete();
const _StatusesReblog statusesReblog = const _StatusesReblog();
const _StatusesUnreblog statusesUnreblog = const _StatusesUnreblog();
const _StatusesFavourite statusesFavourite =
    const _StatusesFavourite(); // such uk english...
const _StatusesUnfavourite statusesUnfavourite = const _StatusesUnfavourite();
const _StatusesMute statusesMute = const _StatusesMute();
const _StatusesUnmute statusesUnmute = const _StatusesUnmute();

class _StatusesGet extends EndpointGet {
  const _StatusesGet() : super(_prefix);

  Future<Status> call(http.Client client, {String base_url, String id}) async {
    return new Status.fromJson(json.decode(await accessEndpoint(
      client: client,
      instance_url: base_url,
      suburl: id,
    )));
  }
}

class _StatusesContext extends EndpointGet {
  const _StatusesContext() : super(_prefix);

  Future<Context> call(http.Client client, {String base_url, String id}) async {
    return new Context.fromJson(json.decode(await accessEndpoint(
      client: client,
      instance_url: base_url,
      suburl: id + "/context",
    )));
  }
}

class _StatusesCard extends EndpointGet {
  const _StatusesCard() : super(_prefix);

  Future<Card> call(http.Client client,
      {String base_url,
      String id = null,
      String since_id = null,
      int limit = null}) async {
    return new Card.fromJson(json.decode(await accessEndpoint(
      client: client,
      instance_url: base_url,
      suburl: id + "/card",
    )));
  }
}

class _StatusesRebloggedBy extends EndpointGet {
  const _StatusesRebloggedBy() : super(_prefix);

  Future<List<Account>> call(http.Client client,
      {String base_url,
      String id,
      String max_id = null,
      String since_id = null,
      int limit = null}) async {
    List<Map<String, dynamic>> json_list = (json.decode(await accessEndpoint(
            client: client,
            instance_url: base_url,
            suburl: id + "/reblogged_by",
            params: {
          "max_id": max_id,
          "since_id": since_id,
          "limit": limit
        })) as List<dynamic>)
        .cast<Map<String, dynamic>>();

    List<Account> results =
        json_list.map((elem) => new Account.fromJson(elem)).toList();

    return results;
  }
}

class _StatusesFavouritedBy extends EndpointGet {
  const _StatusesFavouritedBy() : super(_prefix);

  Future<List<Account>> call(http.Client client,
      {String base_url,
      String id,
      String max_id = null,
      String since_id = null,
      int limit = null}) async {
    List<Map<String, dynamic>> json_list = json.decode(await accessEndpoint(
        client: client,
        instance_url: base_url,
        suburl: id + "/favourited_by",
        params: {"max_id": max_id, "since_id": since_id, "limit": limit}));

    List<Account> results =
        json_list.map((elem) => new Account.fromJson(elem)).toList();

    return results;
  }
}

class _StatusesPost extends EndpointPost {
  const _StatusesPost() : super(_prefix);

  Future<Status> call(http.Client client,
      {String base_url, StatusPost status_posting}) async {
    return new Status.fromJson(json.decode(await accessEndpoint(
        client: client,
        instance_url: base_url,
        body_json: status_posting.toJson())));
  }
}

class _StatusesDelete extends EndpointDelete {
  const _StatusesDelete() : super(_prefix);

  // API returns empty object on success
  Future<void> call(http.Client client, {String base_url, String id}) async {
    return json.decode(await accessEndpoint(
        client: client, instance_url: base_url, suburl: id));
  }
}

class _StatusesReblog extends EndpointPost {
  const _StatusesReblog() : super(_prefix);

  Future<Status> call(http.Client client, {String base_url, String id}) async {
    return new Status.fromJson(json.decode(await accessEndpoint(
        client: client, instance_url: base_url, suburl: id + '/reblog')));
  }
}

class _StatusesUnreblog extends EndpointPost {
  const _StatusesUnreblog() : super(_prefix);

  Future<Status> call(http.Client client, {String base_url, String id}) async {
    return new Status.fromJson(json.decode(await accessEndpoint(
        client: client, instance_url: base_url, suburl: id + '/unreblog')));
  }
}

class _StatusesFavourite extends EndpointPost {
  const _StatusesFavourite() : super(_prefix);

  Future<Status> call(http.Client client, {String base_url, String id}) async {
    return new Status.fromJson(json.decode(await accessEndpoint(
        client: client, instance_url: base_url, suburl: id + '/favourite')));
  }
}

class _StatusesUnfavourite extends EndpointPost {
  const _StatusesUnfavourite() : super(_prefix);

  Future<Status> call(http.Client client, {String base_url, String id}) async {
    return new Status.fromJson(json.decode(await accessEndpoint(
        client: client, instance_url: base_url, suburl: id + '/unfavourite')));
  }
}

class _StatusesMute extends EndpointPost {
  const _StatusesMute() : super(_prefix);

  Future<Status> call(http.Client client, {String base_url, String id}) async {
    return new Status.fromJson(json.decode(await accessEndpoint(
        client: client, instance_url: base_url, suburl: id + '/mute')));
  }
}

class _StatusesUnmute extends EndpointPost {
  const _StatusesUnmute() : super(_prefix);

  Future<Status> call(http.Client client, {String base_url, String id}) async {
    return new Status.fromJson(json.decode(await accessEndpoint(
        client: client, instance_url: base_url, suburl: id + '/unmute')));
  }
}
