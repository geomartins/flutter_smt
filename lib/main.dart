import 'package:cruz/config/constants.dart';
import 'package:cruz/controllers/password_reset_controller.dart';
import 'package:cruz/providers/register_provider.dart';
import 'package:cruz/services/loop_service.dart';
import 'package:cruz/utils/kernel.dart';
import 'package:cruz/config/themefy.dart';
import 'package:cruz/routes/routefy.dart';
import 'package:cruz/utils/translations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:get_it/get_it.dart';

void main() async{

  await Kernel().init();
  await dotenv.load(fileName: "production.env");

  //Registering GetIt
  GetIt.I.registerSingleton<LoopService>(LoopService());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RegisterProvider( //Using RxDart
      child: MultiProvider( //Using Provider
        providers: [
          Provider<PasswordResetController>(create: (_) => PasswordResetController()),
        ],
        child: GetMaterialApp( //Using Getx
          //initialBinding: ,
          title: kAppName,
          translations: MyTranslations(),
          locale: const Locale('en','US'),
          theme: Themefy().xll(),
          defaultTransition: Routefy.defaultTransition,
          initialRoute: Routefy.initial,
          getPages: Routefy.all(),
          unknownRoute: Routefy.unknownRoute,
        ),
      ),
    );
  }
}

//Dynamic Urls
//https://iisprey.medium.com/advanced-navigation-with-getx-in-flutter-95970f6c5afe
