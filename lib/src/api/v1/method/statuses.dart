import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;

import '../../endpoint.dart';
import '../../../entities/v1/entities.dart';

const _prefix = '/api/v1/statuses';

const _StatusesPost statusesPost = const _StatusesPost();

class _StatusesPost extends Endpoint {
  const _StatusesPost() : super(method: HttpMethod.POST, url: _prefix);

  Future<Status> call(http.Client client,
      {String base_url, StatusPost status_posting}) async {
    return new Status.fromJson(json.decode(await accessEndpoint(
        client: client,
        instance_url: base_url,
        body_json: status_posting.toJson())));
  }
}
