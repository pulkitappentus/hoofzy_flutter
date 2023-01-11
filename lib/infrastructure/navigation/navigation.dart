import 'package:Hoofzy_V2/presentation/mobile_number/mobile_number_page.dart';
import 'package:Hoofzy_V2/presentation/set_up_profile/setup_profile_page.dart';
import 'package:Hoofzy_V2/presentation/sitter_profile_screens/sitter_profile_page.dart';
import 'package:Hoofzy_V2/presentation/verification_screen/verification_page.dart';
import 'package:get/get.dart';
import '../../presentation/about_home/about_home_page.dart';
import '../../presentation/availability/availability_page.dart';
import '../../presentation/boarding_screens/boarding_screen_view.dart';
import '../../presentation/cancellation_policy/cancel_policy_page.dart';
import '../../presentation/login_screens/login_page.dart';
import '../../presentation/pet_preferences/pet_preferences_page.dart';
import '../../presentation/rates/rate_page.dart';
import '../../presentation/screens.dart';
import '../../presentation/sitter_build_trust_screens/final_details/final_details_page.dart';
import '../../presentation/sitter_build_trust_screens/request_testimonials/request_testimonials_page.dart';
import '../../presentation/sitter_build_trust_screens/safety_quiz/safety_quiz_page.dart';
import '../../presentation/sitter_build_trust_screens/sitter_profile/create_profile_page.dart';
import '../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/basic_info/basic_info_page.dart';
import '../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/date_of_birth/dateofbirth_page.dart';
import '../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/profile_cover_photo/profile_cover_photo_page.dart';
import '../../presentation/sitter_profile_screen/sitter_profile_page2.dart';
import '../../presentation/sitter_service_setting/service_setting_page.dart';
import 'bindings/controllers/SetupProfileControllerBinding.dart';
import 'bindings/controllers/SitterProfileControllerBinding.dart';
import 'bindings/controllers/abouthome.controllerBinding.dart';
import 'bindings/controllers/availability.controllerBinding.dart';
import 'bindings/controllers/basic.info.controllerBinding.dart';
import 'bindings/controllers/cancelpolicy.controllerBinding.dart';
import 'bindings/controllers/controllers_bindings.dart';
import 'bindings/controllers/create.profile.controllerBinding.dart';
import 'bindings/controllers/date.of.birth.controllerBinding.dart';
import 'bindings/controllers/final.details.controllerBinding.dart';
import 'bindings/controllers/login.controller.binding.dart';
import 'bindings/controllers/petpreferences.controllerBinding.dart';
import 'bindings/controllers/profile.cover.photo.controllerBinding.dart';
import 'bindings/controllers/rate.controllerBinding.dart';
import 'bindings/controllers/request.testimonials.controllerBinding.dart';
import 'bindings/controllers/safety.quiz.controllerBinding.dart';
import 'bindings/controllers/service.setting.controllerBinding.dart';
import 'routes.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.setupprofile,
      page: () => SetupProfilePage(),
      binding: SetupProfileControllerBinding(),
    ),
    GetPage(
      name: Routes.verification,
      page: () => VerificationPage(),
      binding: LoginControllerBinding(),
    ),
    GetPage(
      name: Routes.mobile,
      page: () => MobileNumberPage(),
      binding: LoginControllerBinding(),
    ),
    GetPage(
      name: Routes.sitterProfile,
      page: () => SitterProfilePage(),
      binding: SitterProfileControllerBinding(),
    ),
    GetPage(
      name: Routes.sitterProfile2,
      page: () => SitterProfilePage2(),
      binding: SitterProfileControllerBinding(),
    ),
    GetPage(
      name: Routes.sitterService,
      page: () => ServiceSettingPage(),
      binding: ServiceSettingControllerBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => LoginPage(),
      binding: LoginControllerBinding(),
    ),
    GetPage(
      name: Routes.boarding,
      page: () => BoardingScreenView(),
      binding: BoardingControllerBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
      binding: SplashControllerBinding(),
    ),
    GetPage(
      name: Routes.rates,
      page: () => RatePage(),
      binding: RateControllerBinding(),
    ),
    GetPage(
      name: Routes.availability,
      page: () => AvailabilityPage(),
      binding: AvailabilityControllerBinding(),
    ),
    GetPage(
      name: Routes.petPreferences,
      page: () => PetPreferencesPage(),
      binding: PetPreferencesControllerBinding(),
    ),
    GetPage(
      name: Routes.aboutHome,
      page: () => AboutHomePage(),
      binding: AboutHomeControllerBinding(),
    ),
    GetPage(
      name: Routes.cancellationPolicy,
      page: () => CancelPolicyPage(),
      binding: CancelPolicyControllerBinding(),
    ),

    GetPage(
      name: Routes.createProfile,
      page: () => CreateProfilePage(),
      binding: CreateProfileControllerBinding(),
    ),
    GetPage(
      name: Routes.requestTestimonials,
      page: () => RequestTestimonialsPage(),
      binding: RequestTestimonialsControllerBinding(),
    ),
    GetPage(
      name: Routes.safetyQuiz,
      page: () => SafetyQuizPage(),
      binding: SafetyQuizControllerBinding(),
    ),
    GetPage(
      name: Routes.finalDetails,
      page: () => FinalDetailsPage(),
      binding: FinalDetailsControllerBinding(),
    ),

    GetPage(
      name: Routes.basicInfo,
      page: () => BasicInfoPage(),
      binding: BasicInfoControllerBinding(),
    ),
    GetPage(
      name: Routes.profileCoverPhoto,
      page: () => DateofbirthPage(),
      binding: DateOfBirthControllerBinding(),
    ),
    GetPage(
      name: Routes.dateOfBirth,
      page: () => ProfileCoverPhotoPage(),
      binding: ProfileCoverPhotoControllerBinding(),
    ),
  ];
}
