import 'package:cruz/modules/auth/services/auth_service.dart';
import 'package:cruz/utils/session.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Servicefy{
  Future<void> init() async {
    debugPrint('starting services ...');
    /// Here is where you put get_storage, hive, shared_pref initialization.
    /// or moor connection, or whatever that's async.

    Get.put<AuthService>(AuthService());
    Get.put<Session>(Session());

    debugPrint('All services started...');
  }
}