import 'package:cruz/modules/auth/bindings/password_reset_binding.dart';
import 'package:cruz/modules/auth/screens/password_reset.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:cruz/modules/auth/screens/login.dart';
import 'package:get/get.dart';
import 'package:cruz/modules/auth/bindings/login_binding.dart';

class AuthRoutes{
  static List<GetPage> all(){
    return [
      GetPage(name: PasswordReset.id, page: () => const PasswordReset(), binding: PasswordResetBinding()),
      GetPage(name: Login.id, page: () => const Login(), transition: Transition.zoom, binding: LoginBinding() ),
    ];
  }
}

