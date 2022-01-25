import 'package:get/get.dart';

class MainController extends GetxController{
  var age = 0.obs;
  var distribution = 4.obs;

  increment() => age++;

  void xx(){
    age.value = 55;
  }

  int get multiply => age.value * age.value;


  // @override
  // void onInit() {
  //   // TODO: implement onInit
  //   // ever(age, (_) => print('age has been changed'));
  //   // once(age, (_) => print('first time age has been changed'));
  //   // debounce(age, (_) => print('age hasnt been changed for 1sec'), time: const Duration(seconds: 1));
  //   // interval(age, (_) => print('every 1sec age is changed'),time: const Duration(seconds: 1));
  //
  //   super.onInit();
  //
  //
  // }
}