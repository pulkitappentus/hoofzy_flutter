import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

import '../../../../../domain/firebase/firebase.repository.dart';
import '../../../../../infrastructure/base/base_controller.dart';

class ServiceDetailController extends BaseController {
  final FirebaseRepository _firebaseRepository;

  ServiceDetailController({required FirebaseRepository firebaseRepository}) : _firebaseRepository = firebaseRepository;

  var selectedService = 10.obs;
  var lastSelectedService = 10.obs;

  var selectedDays = 10.obs;
  var lastSelectedDays = 10.obs;

  var tabValue = 1.obs;

  var aboutHomeList = ['Lives in an Apartment', 'Non-Smoking Household', 'Has 1 Dog', 'Does Not Have a Yard', 'Has Caged Pets', 'No Children Present'];
  var additionalSkillsList = ['Oral Medication Administration', 'First Aid/CPR', 'Special Needs Dog Experience', 'Injected Medication Administration', 'Senior Dog Experience'];

  @override
  void onConnectionChange(ConnectivityResult result) {

  }

  @override
  void onTokenChange(String? result) {

  }


}
