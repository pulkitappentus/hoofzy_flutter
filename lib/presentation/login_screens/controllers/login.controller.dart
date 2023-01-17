import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../../../domain/firebase/firebase.repository.dart';
import '../../../../infrastructure/base/base_controller.dart';

class LoginController extends BaseController {
  final FirebaseRepository _firebaseRepository;
  var tabIndex = 0.obs;
  var reviewAvailable = false;
  LoginController({required FirebaseRepository firebaseRepository}) : _firebaseRepository = firebaseRepository;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();


  @override
  void onConnectionChange(ConnectivityResult result) {

  }

  @override
  void onTokenChange(String? result) {

  }

/*  loginWithGoogle() async {
    try {
      final GoogleSignInAccount googleSignInAccount =
      await googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      final authResult = await _auth.signInWithCredential(credential);

      final User? user = authResult.user;
      assert(!user!.isAnonymous);
      assert(await user!.getIdToken() != null);
      final User currentUser = _auth.currentUser!;
      assert(user!.uid == currentUser.uid);
      Get.toNamed('/homeView'); // navigate to your wanted page
      return;
    } catch (e) {
      throw (e);
    }
  }

  Future<void> logoutGoogle() async {
    await googleSignIn.signOut();
    Get.back(); // navigate to your wanted page after logout.
  }*/

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
      return userDetails.user;
    }
    } catch (error) {
      print('loginerror:----${error}');
    }
    return null;
  }


}
