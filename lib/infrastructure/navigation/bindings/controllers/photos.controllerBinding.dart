import 'package:get/get.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/photos/controllers/photos.controller.dart';

class PhotosControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<PhotosController>(
          () => PhotosController(),
    );

  }
}
