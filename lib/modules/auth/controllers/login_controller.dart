
import 'package:cruz/modules/auth/models/dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with StateMixin<Dialog>{
  final _email = 'marto'.obs;
  final _password = RxString('ss'); //'ss'.obs;
  final _count = 0.obs;

  late Dialog dialogState;

  //RxString('Martins)
  //RxInt(0)
  //RxDouble(33.3)
  //RxList<String>([])
  //RxMap<String, dynamic>({})
  //Rx<User>()

  void onInit() {
    dialogState = Dialog();
    dialogState.age = 50;
    dialogState.name = 'Martolal';


    super.onInit();
    change(dialogState,status: RxStatus.success());
    debugPrint('this is login controller constructor');
  }


  void incrementAge(){
    dialogState.age = dialogState.age+1;
    change(dialogState,status: RxStatus.success());
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