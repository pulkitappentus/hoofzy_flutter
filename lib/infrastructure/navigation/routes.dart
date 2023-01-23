import 'bindings/domains/firebase.repository.binding.dart';

class Routes {
  static Future<String> get initialRoute async {
    return SPLASH;
    // try {
    //   final authDomainService = AuthRepositoryBinding().repository;
    //   final authenticated = await authDomainService.isAuthenticated();
    //   return !authenticated ? login_screens : home;
    // } catch (err) {
    //   return login_screens;
    // }
  }

  static const CONTENT = '/content';
  static const SPLASH = '/splash';
  static const WALLPAPERS = '/wallpapers';
  static const home = '/home';
  static const boarding = '/boarding_screens';
  static const login = '/login_screens';
  static const setupprofile = '/set_up_profile';
  static const verification = '/verification_screen';
  static const sitterProfile = '/sitter_profile_screens';
  static const sitterProfile2 = '/sitter_profile_screen';
  static const sitterService = '/sitter_service_setting';
  static const rates = '/rates';
  static const availability = '/availability';
  static const petPreferences = '/pet_preferences';
  static const aboutHome = '/about_home';
  static const cancellationPolicy = '/cancellation_policy';
  static const mobile = '/mobile_number';
  static const PREVIEW = '/preview';
  static const createProfile = '/sitter_build_trust_screens/sitter_profile';
  static const requestTestimonials = '/sitter_build_trust_screens/request_testimonials';
  static const safetyQuiz = '/sitter_build_trust_screens/safety_quiz';
  static const finalDetails = '/sitter_build_trust_screens/final_details';
  static const basicInfo = '/sitter_build_trust_screens/sitter_profile/profile_details/basic_info';
  static const profileCoverPhoto = '/sitter_build_trust_screens/sitter_profile/profile_details/profile_cover_photo';
  static const dateOfBirth = '/sitter_build_trust_screens/sitter_profile/profile_details/date_of_birth';
  static const details = '/sitter_build_trust_screens/sitter_profile/profile_details/details';
  static const photos = '/sitter_build_trust_screens/sitter_profile/profile_details/photos';
  static const yourPets = '/sitter_build_trust_screens/sitter_profile/profile_details/your_pets';

  static const petBasicDetails = '/pet_profile_screens/pet_basic_details';
  static const petOtherDetails = '/pet_profile_screens/pet_other_details';
  static const petProfileImage = '/pet_profile_screens/pet_profile_image';
  static const petBreed = '/pet_profile_screens/pet_breed';
  static const petOtherBreed = '/pet_profile_screens/pet_other_breed';
  static const petAvatar = '/pet_profile_screens/pet_avatar_screen';
  static const petAnalyze = '/pet_profile_screens/pet_analyze_screen';

  static const servicesIntro = '/user_app/boarding_screens/services_intro_screen';
  static const serviceBookingPage1 = '/user_app/boarding_screens/services_booking_screen1';
  static const serviceBookingPage2 = '/user_app/boarding_screens/services_booking_screen2';
  static const serviceBookingPage3 = '/user_app/boarding_screens/services_booking_screen3';
  static const sortAndFilter = '/user_app/boarding_screens/sort_filter_screen';
  static const serviceDetails = '/user_app/boarding_screens/service_detail_screen';
  static const userPets = '/user_app/pet_screens';
}
