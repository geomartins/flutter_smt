import 'package:cruz/modules/auth/auth_routes.dart';
import 'package:cruz/modules/guest/guest_routes.dart';
import 'package:cruz/modules/guest/screens/page_not_found.dart';
import 'package:cruz/modules/guest/screens/welcome.dart';
import 'package:get/get.dart';


class Routefy{
  static String initial = Welcome.id;
  static Transition defaultTransition = Transition.zoom;
  static GetPage unknownRoute = GetPage(name: PageNotFound.id, page: () => const PageNotFound());

  static List<GetPage> all(){
    return [
      ... AuthRoutes.all(),
      ... GuestRoutes.all(),
    ];
  }
}