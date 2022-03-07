import 'dart:developer';

import 'package:cruz/controllers/login_controller.dart';
import 'package:cruz/controllers/password_reset_controller.dart';
import 'package:cruz/services/loop_service.dart';
import 'package:cruz/utils/session.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

class Login extends GetView<LoginController> {
  static const String id = "/login";

  const Login({Key? key}) : super(key: key);

  void xx(){
    //this would get argument passed to a page
    //String x = Get.arguments;
  }

  @override
  Widget build(BuildContext context) {
    final x = GetIt.I.get<LoopService>();
    return Scaffold(
      appBar: AppBar(title: Text('Login'.tr)),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.incrementAge();

          x.updateAges();
          print(x.getAges());
          //context.read()<PasswordResetController>().increment();
          //Get.find<Session>().write(key, value)
          //print(dotenv.env['APP_NAME']);
           //controller.incrementCounter();
           //GetUtils.isEmail('ade@yahoo.com');
           //Get.changeTheme(Get.isDarkMode? ThemeData.light(): ThemeData.dark());
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(()=> Text(controller.credentials)),

            //Using StateMixin
            controller.obx(
                  (state)=>Text(state!.age.toString()),

              // here you can put your custom loading indicator, but
              // by default would be Center(child:CircularProgressIndicator())
              // onLoading: CustomLoadingIndicator(),
              onEmpty: Text('No data found'),

              // here also you can set your own error widget, but by
              // default will be an Center(child:Text(error))
              onError: (error)=>Text('shit is real'),
            ),
          ],
        ),
      ),
    );
  }
}
