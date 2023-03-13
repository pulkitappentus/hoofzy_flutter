import 'package:get/get.dart';
import '../../../../presentation/user_app/boarding_screens/sort_filter_screen/controllers/sort.filter.controller.dart';

class SortFilterControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<SortFilterController>(
          () => SortFilterController(),
    );

  }
}
