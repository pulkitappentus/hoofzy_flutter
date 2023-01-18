import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import '../../../../domain/firebase/firebase.repository.dart';
import '../../../../infrastructure/base/base_controller.dart';

class PetAvatarController extends BaseController {
  final FirebaseRepository _firebaseRepository;

  PetAvatarController({required FirebaseRepository firebaseRepository}) : _firebaseRepository = firebaseRepository;

  var selectedAvatar = 10.obs;
  var lastSelectedAvatar = 10.obs;

  @override
  void onConnectionChange(ConnectivityResult result) {
  }

  @override
  void onTokenChange(String? result) {

  }

}
