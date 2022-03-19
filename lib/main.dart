import 'package:cruz/config/constants.dart';
import 'package:cruz/translations/translations.dart';
import 'package:cruz/config/themefy.dart';
import 'package:cruz/config/routefy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'config/servicefy.dart';


void main() async{
  await Servicefy().init();
  await dotenv.load(fileName: "production.env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( //Using Getx
      //initialBinding: ,
      title: kAppName,
      translations: MyTranslations(),
      locale: const Locale('en','US'),
      theme: Themefy().xll(),
      defaultTransition: Routefy.defaultTransition,
      initialRoute: Routefy.initial,
      getPages: Routefy.all(),
      unknownRoute: Routefy.unknownRoute,
    );
  }
}

//Dynamic Urls
//https://iisprey.medium.com/advanced-navigation-with-getx-in-flutter-95970f6c5afe


// Boiler Plate
// https://github.com/kuzzleio/flutter-boilerplate
// https://github.com/zubairehman/flutter-boilerplate-project
// https://github.com/geomartins/flutter_smt