import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../../../domain/firebase/firebase.repository.dart';
import '../../../../infrastructure/base/base_controller.dart';
import '../../../infrastructure/navigation/routes.dart';

class LoginController extends BaseController {
  final FirebaseRepository _firebaseRepository;

  LoginController({required FirebaseRepository firebaseRepository}) : _firebaseRepository = firebaseRepository;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  var isLoggedIn = false.obs;

  @override
  void onConnectionChange(ConnectivityResult result) {

  }

  @override
  void onTokenChange(String? result) {

  }

  Future<User?> handleGoogleSignIn(context) async {
    final GoogleSignIn googleSignIn = GoogleSignIn(scopes: [
      'email',
    ]);
    if (await googleSignIn.isSignedIn()) {
      await googleSignIn.signOut();
    }
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
      print("google token==>${googleAuth!.accessToken}");
      final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,);
      var userDetails = await _auth.signInWithCredential(credential);
      if (userDetails.user != null) {
      //  Utils.progressDialogShow(context);
        print("google token==>${userDetails.user}");
        Get.toNamed(Routes.setupprofile);
        changePage(userDetails.user);
      return userDetails.user;
    }
    } catch (error) {
      print('loginerror:----${error}');
    }
    return null;
  }

  void changePage(User? user) {
    isLoggedIn.value = true;
  }


}
