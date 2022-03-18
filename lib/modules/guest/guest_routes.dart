import 'package:cruz/middlewares/login_middleware.dart';
import 'package:cruz/modules/guest/screens/page_not_found.dart';
import 'package:cruz/modules/guest/screens/splash.dart';
import 'package:cruz/modules/guest/screens/welcome.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get.dart';

class GuestRoutes{
  static List<GetPage> all(){
    return [
      GetPage(name: Welcome.id, page: () => const Welcome(), middlewares: [
        LoginMiddleware(priorityIndex: 3),
      ]),
      GetPage(name: PageNotFound.id, page: () => const PageNotFound()),
      GetPage(name: Splash.id, page: () => const Splash())
    ];
  }
}