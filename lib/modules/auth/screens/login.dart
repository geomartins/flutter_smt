import 'package:badges/badges.dart';
import 'package:cruz/modules/auth/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends GetView<LoginController> {
  static const String id = "/login";

  const Login({Key? key}) : super(key: key);

  void xx(){
    //this would get argument passed to a page
    //String x = Get.arguments;
  }

  void printer(){
    debugPrint('Marti baba');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login'.tr)),
      floatingActionButton: Badge(
        badgeContent: const Text('2'),
        child: FloatingActionButton(
          onPressed: (){
            controller.incrementAge();
            //context.read()<PasswordResetController>().increment();
            //Get.find<Session>().write(key, value)
            //print(dotenv.env['APP_NAME']);
            //controller.incrementCounter();
            //GetUtils.isEmail('ade@yahoo.com');
            //Get.changeTheme(Get.isDarkMode? ThemeData.light(): ThemeData.dark());
          },
          child: const Icon(Icons.add),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                child: const Text('Testing tearoff '),
                onPressed: (){
                  debugPrint('Hello world');
                }
            ),

            Obx(()=> Text(controller.credentials)),

            //Using StateMixin
            controller.obx(
                  (state)=>Text(state!.age.toString()),

              // here you can put your custom loading indicator, but
              // by default would be Center(child:CircularProgressIndicator())
              // onLoading: CustomLoadingIndicator(),
              onEmpty: const Text('No data found'),

              // here also you can set your own error widget, but by
              // default will be an Center(child:Text(error))
              onError: (error)=> const Text('shit is real'),
            ),
          ],
        ),
      ),
    );
  }
}
