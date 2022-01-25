import 'package:cruz/controllers/login_controller.dart';
import 'package:get/get.dart';

//this helps with binding the screen with the controller
class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LoginController>(LoginController());
    //Get.putAsync<String>(() => tell());
    //Get.put<LoginController>(LoginController(), tag: 'loginC', permanent: true);
    // 'tag' makes u to be able to find the controller
    // 'permanent' = true means dont dispose when not in use4
    //Get.find<LoginController>(tag: 'loginC')
    //Get.lazyPut<LoginController>(() => LoginController(), tag: 'loginC', fenix: true);
    //Get.create(() => ShopItemController()); //this will be available throughout the app
  }

  // Future<String> tell() async{
  //   return  'hi';
  // }
}