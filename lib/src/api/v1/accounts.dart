import '../endpoint.dart';
import '../../entities/entities.dart' as Entity;

final Fetch = new _Fetch();

class _Fetch extends Endpoint {
  _Fetch(): super(method: HttpMethod.GET, url: "/api/v1/accounts/:id");

  static Entity.Account call(int id) {
    // TODO: FIX
    return new Entity.Account();
  }
}