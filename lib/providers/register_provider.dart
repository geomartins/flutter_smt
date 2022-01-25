import 'package:cruz/blocs/register_bloc.dart';
import 'package:flutter/material.dart';

class RegisterProvider extends InheritedWidget {
  final bloc = RegisterBloc();

  RegisterProvider({Key? key, required Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }

  static RegisterBloc of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<RegisterProvider>()!.bloc;
  }
}