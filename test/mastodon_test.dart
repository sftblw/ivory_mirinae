// import "package:test/test.dart";

// import "package:ivory_mirinae/ivory_mirinae.dart";

// void main() {
//   test_class_appinfo();
// }

// void test_class_appinfo() {
//   test("AppInfo._buildParam should formate well", () {
//     var info = new AppInfo(
//         client_name: "ivory_mirinae_testapp",
//         redirect_uris: "urn:ietf:wg:oauth:2.0:oob",
//         scopes: [AppScope.Read, AppScope.Write, AppScope.Follow],
//         website: "https://sftblw.moe/ivory_mirinae");

//     expect(
//         info.buildParam(),
//         "client_name=ivory_mirinae_testapp" +
//             "&redirect_uris=urn:ietf:wg:oauth:2.0:oob" +
//             "&scopes[]=read&scopes[]=write&scopes[]=follow" +
//             "&website=https://sftblw.moe/ivory_mirinae");
//   });
//   test("AppInfo._buildParam should formate well even website is omitted", () {
//     var info = new AppInfo(
//       client_name: "ivory_mirinae_testapp",
//       redirect_uris: "urn:ietf:wg:oauth:2.0:oob",
//       scopes: [AppScope.Read, AppScope.Write, AppScope.Follow],
//     );

//     expect(
//         info.buildParam(),
//         "client_name=ivory_mirinae_testapp" +
//             "&redirect_uris=urn:ietf:wg:oauth:2.0:oob" +
//             "&scopes[]=read&scopes[]=write&scopes[]=follow");
//   });
// }
