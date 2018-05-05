import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../entities/v1/entities.dart';

enum HttpMethod { GET, POST, PATCH }

/// Base class for each endpoint
///
/// Each endpoint should implement it by callable class,
/// hide implementation, and export final varlable of class.
abstract class Endpoint {
  final HttpMethod method;
  final String url;

  const Endpoint({this.method, this.url});

  Future<String> accessEndpoint(
      {http.Client client = null,
      String instance_url,
      Map<String, dynamic> body_json}) async {
    if (client == null) {
      client = new http.Client();
    }

    Future<http.Response> posting = client.post('${instance_url}/${url}',
        headers: {"content-type": "application/json"},
        body: json.encode(body_json));

    var response = await posting;
    // handle error
    if (!_IsStatusCode2xx(response.statusCode)) {
      throw new ErrorEntity.fromJson(json.decode(response.body));
    }

    return response.body;
  }
}

bool _IsStatusCode2xx(int code) {
  return (200 <= code) && (300 > code);
}
