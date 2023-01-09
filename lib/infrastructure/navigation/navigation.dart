import 'package:Hoofzy_V2/presentation/mobile_number/mobile_number_page.dart';
import 'package:Hoofzy_V2/presentation/set_up_profile/setup_profile_page.dart';
import 'package:Hoofzy_V2/presentation/sitter_profile_screens/sitter_profile_page.dart';
import 'package:Hoofzy_V2/presentation/verification_screen/verification_page.dart';
import 'package:get/get.dart';
import '../../presentation/boarding_screens/boarding_screen_view.dart';
import '../../presentation/login_screens/login_page.dart';
import '../../presentation/screens.dart';
import '../../presentation/sitter_profile_screen/sitter_profile_page2.dart';
import 'bindings/controllers/SetupProfileControllerBinding.dart';
import 'bindings/controllers/SitterProfileControllerBinding.dart';
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
      name: Routes.verification,
      page: () => VerificationPage(),
      binding: LoginControllerBinding(),
    ),
    GetPage(
      name: Routes.mobile,
      page: () => MobileNumberPage(),
      binding: LoginControllerBinding(),
    ),
    GetPage(
      name: Routes.sitterProfile,
      page: () => SitterProfilePage(),
      binding: SitterProfileControllerBinding(),
    ),
    GetPage(
      name: Routes.sitterProfile2,
      page: () => SitterProfilePage2(),
      binding: SitterProfileControllerBinding(),
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
