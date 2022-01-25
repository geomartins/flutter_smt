import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  final _email = 'marto'.obs;
  final _password = RxString('ss'); //'ss'.obs;
  final _count = 0.obs;


  //RxString('Martins)
  //RxInt(0)
  //RxDouble(33.3)
  //RxList<String>([])
  //RxMap<String, dynamic>({})
  //Rx<User>()

  void onInit() {
    super.onInit();
    print('this is login controller constructor');
  }

  void incrementCounter(){
    _count.value = _count.value+1;
  }


  // @override
  // void onInit() {
  //   super.onInit();
  //
  //   //////// GETX WORKERS ////////////////
  //
  //   //called every time the value of a variable changes
  //   ever(_count, (_) => print(_count));
  //
  //   //called every time when the value of any variable in the list changes
  //   everAll([_count], (_) => print(_count));
  //
  //   //called only once when the variable changes
  //   once(_count, (_) => print(_count));
  //
  //   //called everytime the user stops typing for 1sec
  //   debounce(_count, (_) => print(_count), time: const Duration(seconds: 1));
  //
  //   //
  //   interval(_count, (_) => print('interval'), time:  const Duration(seconds: 3));
  //
  //
  //
  //   //
  //
  //
  //   //WidgetsBinding.instance!.addObserver(this);
  // }



  String get credentials => _email.value + ' '+_password.value+_count.value.toString();


  @override
  void onClose(){
    super.onClose();
  }
}