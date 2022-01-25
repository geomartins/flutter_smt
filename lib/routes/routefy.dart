import 'package:cruz/bindings/login_binding.dart';
import 'package:cruz/screens/guest/welcome.dart';
import 'package:cruz/screens/page_not_found.dart';
import 'package:get/get.dart';
import '../screens/guest/login.dart';
import '../middlewares/login_middleware.dart';


class Routefy{
  static String initial = Welcome.id;
  static Transition defaultTransition = Transition.zoom;
  static GetPage unknownRoute = GetPage(name: PageNotFound.id, page: () => const PageNotFound());

  static List<GetPage> all(){
    return [
      GetPage(name: Welcome.id, page: () => const Welcome(), middlewares: [
        LoginMiddleware(priorityIndex: 3),
      ]),
      GetPage(name: Login.id, page: () => const Login(), transition: Transition.zoom, binding: LoginBinding() ),
    ];
  }
}