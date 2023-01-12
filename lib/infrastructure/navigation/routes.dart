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
}
