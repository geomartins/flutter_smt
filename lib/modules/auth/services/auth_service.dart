import 'package:get/get.dart';
// abstract class AuthBase extends GetxService{
//   Future<Session> init() async {
//     print('$runtimeType delays 2 sec');
//     await 2.delay();
//     print('$runtimeType ready!');
//     return this;
//   }
//   Future<void> login(String email, String password);
//   Future<void> logout();
//
//   @override
//   void onInit() {
//     // TODO: implement onInit
//     super.onInit();
//   }
// }

class AuthService extends GetxService {
  Future<AuthService> init() async {
    await 2.delay();
    return this;
  }
  Future<void> login(String email, String password) async {
      return await null;
  }


}
