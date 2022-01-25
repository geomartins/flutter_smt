import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginMiddleware extends GetMiddleware{
  int? priorityIndex;
  LoginMiddleware({ int? priorityIndex});

  @override
  int get priority => priorityIndex ?? -8;

  @override
  RouteSettings? redirect(String? route) {
    // print('Route is $route ');
    return route == '/'
        ? const RouteSettings(name: '/login')
        : null;
  }

  // @override
  // GetPage onPageCalled(GetPage page) {
  //   print('>>> Page ${page.name} called');
  //   print('>>> User ${authController.username} logged');
  //   return authController.username != null
  //       ? page.copyWith(parameter: {'user': authController.username})
  //       : page;
  // }

  // @override
  // List<Bindings> onBindingsStart(List<Bindings> bindings) {
  //   // This function will be called right before the Bindings are initialize,
  //   // then bindings is null
  //   bindings = [OtherBinding()];
  //   return bindings;
  // }
  //
  // @override
  // GetPageBuilder onPageBuildStart(GetPageBuilder page) {
  //   print('Bindings of ${page.toString()} are ready');
  //   return page;
  // }

  @override
  Widget onPageBuilt(Widget page) {
   // print('Widget ${page.toStringShort()} will be showed');
    return page;
  }

  @override
  void onPageDispose() {
    //print('PageDisposed');
  }
}