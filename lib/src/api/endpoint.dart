enum HttpMethod {
  GET,
  POST,
  PATCH
}

/// Base class for each endpoint
/// 
/// Each endpoint should implement it by callable class,
/// hide implementation, and export final varlable of class.
abstract class Endpoint {
  final HttpMethod method;
  final String url;
  
  Endpoint({this.method, this.url});
}