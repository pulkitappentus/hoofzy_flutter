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
  static const PREVIEW = '/preview';
}
