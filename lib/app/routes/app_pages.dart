import 'package:get/get.dart';

import '../modules/another/bindings/another_binding.dart';
import '../modules/another/views/another_view.dart';
import '../modules/hoofzy_dummy/bindings/hoofzy_dummy_binding.dart';
import '../modules/hoofzy_dummy/views/hoofzy_dummy_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.HOOFZY_DUMMY,
      page: () => const HoofzyDummyView(),
      binding: HoofzyDummyBinding(),
    ),
    GetPage(
      name: _Paths.ANOTHER,
      page: () => const AnotherView(),
      binding: AnotherBinding(),
    ),
  ];
}
