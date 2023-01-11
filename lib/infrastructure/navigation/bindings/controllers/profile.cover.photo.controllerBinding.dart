import 'package:get/get.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/controllers/create.profile.controller.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/basic_info/controllers/basic.info.controller.dart';
import '../../../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/profile_cover_photo/controllers/profile.cover.photo.controller.dart';
import '/infrastructure/navigation/bindings/domains/firebase.repository.binding.dart';

class ProfileCoverPhotoControllerBinding extends Bindings {
  @override
  void dependencies() {
    final firebaseRepositoryBinding = FirebaseRepositoryBinding();

    Get.lazyPut<ProfileCoverPhotoController>(
          () => ProfileCoverPhotoController(firebaseRepository: firebaseRepositoryBinding.repository),
    );

  }
}
