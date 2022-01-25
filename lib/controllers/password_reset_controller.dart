import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
class PasswordResetController with ChangeNotifier{
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

}
