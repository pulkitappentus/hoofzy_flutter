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
import '../../presentation/pet_profile_screens/pet_analyze_screen/pet_analyze_page.dart';
import '../../presentation/pet_profile_screens/pet_avatar_screen/pet_avatar_page.dart';
import '../../presentation/pet_profile_screens/pet_basic_details/pet_basic_details_page.dart';
import '../../presentation/pet_profile_screens/pet_breed/pet_breed_page.dart';
import '../../presentation/pet_profile_screens/pet_other_breed/pet_other_breed_page.dart';
import '../../presentation/pet_profile_screens/pet_other_details/pet_other_details_page.dart';
import '../../presentation/pet_profile_screens/pet_profile_image/pet_profile_image_page.dart';
import '../../presentation/rates/rate_page.dart';
import '../../presentation/screens.dart';
import '../../presentation/service_area_screen/service_area_page.dart';
import '../../presentation/sitter_app/booking/booking_details/booking_details_page.dart';
import '../../presentation/sitter_app/booking/finish_service/finish_service_page.dart';
import '../../presentation/sitter_app/booking/up_comming_booking/upcomming_booking_page.dart';
import '../../presentation/sitter_app/booking/walking_page/pet_walking_page.dart';
import '../../presentation/sitter_app/sitter_home_screens/sitter.home.screen.dart';
import '../../presentation/sitter_build_trust_screens/final_details/final_details_page.dart';
import '../../presentation/sitter_build_trust_screens/request_testimonials/request_testimonials_page.dart';
import '../../presentation/sitter_build_trust_screens/sitter_profile/create_profile_page.dart';
import '../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/about_you/about_you_page.dart';
import '../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/basic_info/basic_info_page.dart';
import '../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/congratulations_screens/congratulation_page.dart';
import '../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/date_of_birth/dateofbirth_page.dart';
import '../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/details/details_page.dart';
import '../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/photos/photos_page.dart';
import '../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/profile_cover_photo/profile_cover_photo_page.dart';
import '../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/quiz_result_screens/quiz_result_page.dart';
import '../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/quiz_screens/quiz1_page.dart';
import '../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/safety_quiz/quiz_explanation_screens/quiz_explanation_screen_view.dart';
import '../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/safety_quiz/safety_quiz_page.dart';
import '../../presentation/sitter_build_trust_screens/sitter_profile/profile_details/your_pets/your_pets_page.dart';
import '../../presentation/sitter_profile_screen/sitter_profile_page2.dart';
import '../../presentation/sitter_service_setting/boarding_screen/boarding_service_page.dart';
import '../../presentation/sitter_service_setting/doggy_care_screen/doggycare_service_page.dart';
import '../../presentation/sitter_service_setting/dogwalking_screen/dogwalking_service_page.dart';
import '../../presentation/sitter_service_setting/dropin_visit_screen/dropin_service_page.dart';
import '../../presentation/sitter_service_setting/house_sitting_screen/housesitting_service_page.dart';
import '../../presentation/user_app/boarding_screens/photos_screen/photos_page.dart';
import '../../presentation/user_app/boarding_screens/service_detail_screen/service_detail_page.dart';
import '../../presentation/user_app/boarding_screens/services_booking_detail_screen/service_booking_detail_page.dart';
import '../../presentation/user_app/boarding_screens/services_booking_payment_screen/service_booking_payment_page.dart';
import '../../presentation/user_app/boarding_screens/services_booking_screen/service_booking_page.dart';
import '../../presentation/user_app/boarding_screens/services_booking_screen1/services_booking_page1.dart';
import '../../presentation/user_app/boarding_screens/services_booking_screen2/services_booking_page2.dart';
import '../../presentation/user_app/boarding_screens/services_booking_screen3/services_booking_page3.dart';
import '../../presentation/user_app/boarding_screens/services_intro_screen/services_intro_page.dart';
import '../../presentation/user_app/boarding_screens/sort_filter_screen/sort_filter_page.dart';
import '../../presentation/user_app/pets_screens/pet_page.dart';
import 'bindings/controllers/SetupProfileControllerBinding.dart';
import 'bindings/controllers/SitterProfileControllerBinding.dart';
import 'bindings/controllers/abouthome.controllerBinding.dart';
import 'bindings/controllers/availability.controllerBinding.dart';
import 'bindings/controllers/basic.info.controllerBinding.dart';
import 'bindings/controllers/booking.details.controllerBinding.dart';
import 'bindings/controllers/cancelpolicy.controllerBinding.dart';
import 'bindings/controllers/controllers_bindings.dart';
import 'bindings/controllers/create.profile.controllerBinding.dart';
import 'bindings/controllers/date.of.birth.controllerBinding.dart';
import 'bindings/controllers/details.controllerBinding.dart';
import 'bindings/controllers/final.details.controllerBinding.dart';
import 'bindings/controllers/finish.service.controllerBinding.dart';
import 'bindings/controllers/login.controller.binding.dart';
import 'bindings/controllers/pet.analyze.controllerBinding.dart';
import 'bindings/controllers/pet.avatar.controllerBinding.dart';
import 'bindings/controllers/pet.breed.controllerBinding.dart';
import 'bindings/controllers/pet.controllerBinding.dart';
import 'bindings/controllers/pet.profile.detail.controllerBinding.dart';
import 'bindings/controllers/pet.profile.image.controllerBinding.dart';
import 'bindings/controllers/pet.profile.other.controllerBinding.dart';
import 'bindings/controllers/petpreferences.controllerBinding.dart';
import 'bindings/controllers/photos.controllerBinding.dart';
import 'bindings/controllers/profile.cover.photo.controllerBinding.dart';
import 'bindings/controllers/rate.controllerBinding.dart';
import 'bindings/controllers/request.testimonials.controllerBinding.dart';
import 'bindings/controllers/safety.quiz.controllerBinding.dart';
import 'bindings/controllers/service.booking.controllerBinding.dart';
import 'bindings/controllers/service.detail.controllerBinding.dart';
import 'bindings/controllers/boarding.service.controllerBinding.dart';
import 'bindings/controllers/servicearea.controllerBinding.dart';
import 'bindings/controllers/services.booking.controllerBinding.dart';
import 'bindings/controllers/services.intro.controllerBinding.dart';
import 'bindings/controllers/sitter.home.controllerBinding.dart';
import 'bindings/controllers/sort.filter.controllerBinding.dart';
import 'bindings/controllers/upcomming.booking.controllerBinding.dart';
import 'bindings/controllers/walking.service.controllerBinding.dart';
import 'bindings/controllers/your.pets.controllerBinding.dart';
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
      name: Routes.boardingService,
      page: () => BoardingServicePage(),
      binding: BoardingServiceControllerBinding(),
    ),
    GetPage(
      name: Routes.houseSittingService,
      page: () => HousesittingServicePage(),
      binding: BoardingServiceControllerBinding(),
    ),
    GetPage(
      name: Routes.dropinVisitService,
      page: () => DropinServicePage(),
      binding: BoardingServiceControllerBinding(),
    ),
    GetPage(
      name: Routes.doggyCareService,
      page: () => DoggycareServicePage(),
      binding: BoardingServiceControllerBinding(),
    ),
    GetPage(
      name: Routes.dogWalkingService,
      page: () => DogwalkingServicePage(),
      binding: BoardingServiceControllerBinding(),
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
      name: Routes.serviceArea,
      page: () => ServiceAreaPage(),
      binding: ServiceareaControllerBinding(),
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
      name: Routes.resultQuiz,
      page: () => QuizResultPage(),
      binding: SafetyQuizControllerBinding(),
    ),
    GetPage(
      name: Routes.congratulation,
      page: () => CongratulationPage(),
      binding: SafetyQuizControllerBinding(),
    ),
    GetPage(
      name: Routes.startQuiz,
      page: () => Quiz1Page(),
      binding: SafetyQuizControllerBinding(),
    ),
    GetPage(
      name: Routes.quizExplanation,
      page: () => QuizExplanationScreenView(),
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
      name: Routes.aboutYou,
      page: () => AboutYouPage(),
      binding: BasicInfoControllerBinding(),
    ),
    GetPage(
      name: Routes.profileCoverPhoto,
      page: () => ProfileCoverPhotoPage(),
      binding: ProfileCoverPhotoControllerBinding(),
    ),
    GetPage(
      name: Routes.dateOfBirth,
      page: () => DateofbirthPage(),
      binding: DateOfBirthControllerBinding(),
    ),
    GetPage(
      name: Routes.details,
      page: () => DetailsPage(),
      binding: DetailsControllerBinding(),
    ),
    GetPage(
      name: Routes.photos,
      page: () => PhotosPage(),
      binding: PhotosControllerBinding(),
    ),
    GetPage(
      name: Routes.yourPets,
      page: () => YourPetsPage(),
      binding: YourPetsControllerBinding(),
    ),
    GetPage(
      name: Routes.petBasicDetails,
      page: () => PetBasicDetailsPage(),
      binding: PetProfileDetailControllerBinding(),
    ),
    GetPage(
      name: Routes.petOtherDetails,
      page: () => PetOtherDetailsPage(),
      binding: PetProfileOtherControllerBinding(),
    ),
    GetPage(
      name: Routes.petProfileImage,
      page: () => PetProfileImagePage(),
      binding: PetProfileImageControllerBinding(),
    ),
    GetPage(
      name: Routes.petBreed,
      page: () => PetBreedPage(),
      binding: PetBreedControllerBinding(),
    ),
    GetPage(
      name: Routes.petOtherBreed,
      page: () => PetOtherBreedPage(),
      binding: PetBreedControllerBinding(),
    ),
    GetPage(
      name: Routes.petAvatar,
      page: () => PetAvatarPage(),
      binding: PetAvatarControllerBinding(),
    ),
    GetPage(
      name: Routes.petAnalyze,
      page: () => PetAnalyzePage(),
      binding: PetAnalyzeControllerBinding(),
    ),
    GetPage(
      name: Routes.servicesIntro,
      page: () => ServicesIntroPage(),
      binding: ServicesIntroControllerBinding(),
    ),
    GetPage(
      name: Routes.serviceBookingPage1,
      page: () => ServicesBookingPage1(),
      binding: ServicesBookingControllerBinding(),
    ),
    GetPage(
      name: Routes.serviceBookingPage2,
      page: () => ServicesBookingPage2(),
      binding: ServicesBookingControllerBinding(),
    ),
    GetPage(
      name: Routes.serviceBookingPage3,
      page: () => ServicesBookingPage3(),
      binding: ServicesBookingControllerBinding(),
    ),
    GetPage(
      name: Routes.userPets,
      page: () => PetsPage(),
      binding: PetControllerBinding(),
    ),
    GetPage(
      name: Routes.sortAndFilter,
      page: () => SortFilterPage(),
      binding: SortFilterControllerBinding(),
    ),
    GetPage(
      name: Routes.serviceDetails,
      page: () => ServiceDetailPage(),
      binding: ServiceDetailControllerBinding(),
    ),
    GetPage(
      name: Routes.bookingScreen,
      page: () => ServiceBookingPage(),
      binding: ServiceBookingControllerBinding(),
    ),
    GetPage(
      name: Routes.bookingDetail,
      page: () => ServiceBookingDetailPage(),
      binding: ServiceBookingControllerBinding(),
    ),
    GetPage(
      name: Routes.bookingPayment,
      page: () => ServiceBookingPaymentPage(),
      binding: ServiceBookingControllerBinding(),
    ),
    GetPage(
      name: Routes.photoScreen,
      page: () => PhotosPages(),
      binding: ServiceBookingControllerBinding(),
    ),
    GetPage(
      name: Routes.upcommingBooking,
      page: () => UpcommingBookingPage(),
      binding: UpcommingBookingControllerBinding(),
    ),
    GetPage(
      name: Routes.bookingDetails,
      page: () => BookingDetailsPage(),
      binding: BookingDetailsControllerBinding(),
    ),
    GetPage(
      name: Routes.finishService,
      page: () => FinishServicePage(),
      binding: FinishServiceControllerBinding(),
    ),
    GetPage(
      name: Routes.petWalking,
      page: () => PetWalkingPage(),
      binding: WalkingServiceControllerBinding(),
    ),

    GetPage(
      name: Routes.sitterHome,
      page: () => SitterHomeScreen(),
      binding: SitterHomeControllerBinding(),
    ),
  ];
}
