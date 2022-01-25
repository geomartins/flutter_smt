import 'dart:developer';

import 'package:cruz/controllers/login_controller.dart';
import 'package:cruz/utils/session.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Login extends GetView<LoginController> {
  static const String id = "/login";

  const Login({Key? key}) : super(key: key);

  void xx(){
    //this would get argument passed to a page
    //String x = Get.arguments;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login'.tr)),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //Get.find<Session>().write(key, value)
          print(dotenv.env['APP_NAME']);
           controller.incrementCounter();
           //GetUtils.isEmail('ade@yahoo.com');
           //Get.changeTheme(Get.isDarkMode? ThemeData.light(): ThemeData.dark());
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Obx(()=> Text(controller.credentials)),
      ),
    );
  }
}
