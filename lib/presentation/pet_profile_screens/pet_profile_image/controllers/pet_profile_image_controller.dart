import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import '../../../hoofzy/model/knowledge_program_data.dart';

class PetProfileImageController extends GetxController {
  var tabIndex = 0.obs;
  var reviewAvailable = false;

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
