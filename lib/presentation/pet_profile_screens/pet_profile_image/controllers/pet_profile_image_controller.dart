import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import '../../../../domain/firebase/firebase.repository.dart';
import '../../../../infrastructure/base/base_controller.dart';
import '../../../hoofzy/model/knowledge_program_data.dart';

class PetProfileImageController extends BaseController {
  final FirebaseRepository _firebaseRepository;
  var tabIndex = 0.obs;
  var reviewAvailable = false;
  PetProfileImageController({required FirebaseRepository firebaseRepository}) : _firebaseRepository = firebaseRepository;

  List<KnowledgeProgramData> knowledgeList = KnowledgeProgramData.knowledgeList;

  //
  var selectedAvatar = 10.obs;
  var lastSelectedAvatar = 10.obs;

  @override
  void onConnectionChange(ConnectivityResult result) {

  }

  @override
  void onTokenChange(String? result) {

  }


}
