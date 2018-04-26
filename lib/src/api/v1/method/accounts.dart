// import 'dart:convert';
// import 'dart:async';

// import '../../endpoint.dart';
// import '../../../entities/v1/entities.dart';

// const _prefix = '/api/v1/apps';

// const _Fetch accounts_fetch = const _Fetch();

// class _Fetch extends Endpoint {
//   const _Fetch() : super(method: HttpMethod.GET, url: _prefix);

//   Future<Account> call({String base_url, String id}) async {
//     return new Account.fromJson(json.decode(await accessEndpoint(
//         instance_url: base_url, body_json: <String, String>{"id": id})));
//   }
// }
