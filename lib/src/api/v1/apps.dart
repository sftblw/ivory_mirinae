import '../endpoint.dart';

final Apps = new _Apps();

final _prefix = '/api/v1/apps';

class _Apps extends Endpoint {
  _Apps(): super(method: HttpMethod.POST, url: "/api/v1/apps");
  static InstanceAuth call(int id) {

  }
}