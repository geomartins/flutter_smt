import 'package:cruz/services/auth_service.dart';
import 'package:cruz/utils/session.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Kernel{
  Future<void> init() async {
    print('starting services ...');
    /// Here is where you put get_storage, hive, shared_pref initialization.
    /// or moor connection, or whatever that's async.

    Get.put<AuthService>(AuthService());
    Get.put<Session>(Session());

    print('All services started...');
  }
}