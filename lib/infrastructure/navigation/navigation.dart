import 'package:Hoofzy_V2/presentation/set_up_profile/setup_profile_page.dart';
import 'package:get/get.dart';
import '../../presentation/boarding_screens/boarding_screen_view.dart';
import '../../presentation/login_screens/login_page.dart';
import '../../presentation/screens.dart';
import 'bindings/controllers/SetupProfileControllerBinding.dart';
import 'bindings/controllers/controllers_bindings.dart';
import 'bindings/controllers/login.controller.binding.dart';
import 'routes.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.setupprofile,
      page: () => SetupProfilePage(),
      binding: SetupProfileControllerBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => LoginPage(),
      binding: LoginControllerBinding(),
    ),
    GetPage(
      name: Routes.boarding,
      page: () => BoardingScreenView(),
      binding: BoardingControllerBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
      binding: SplashControllerBinding(),
    ),
  ];
}
