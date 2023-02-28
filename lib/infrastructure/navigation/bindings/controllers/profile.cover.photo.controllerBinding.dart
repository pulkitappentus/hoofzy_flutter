import 'package:get/get.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/profile_cover_photo/controllers/profile.cover.photo.controller.dart';
class ProfileCoverPhotoControllerBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<ProfileCoverPhotoController>(
          () => ProfileCoverPhotoController(),
    );

  }
}
