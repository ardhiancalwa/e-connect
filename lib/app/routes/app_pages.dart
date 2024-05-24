import 'package:get/get.dart';

import '../modules/detail_vehicle/bindings/detail_vehicle_binding.dart';
import '../modules/detail_vehicle/views/detail_vehicle_view.dart';
import '../modules/forgot_password_page/bindings/forgot_password_page_binding.dart';
import '../modules/forgot_password_page/views/forgot_password_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login_page/bindings/login_page_binding.dart';
import '../modules/login_page/views/login_page_view.dart';
import '../modules/navigation/bindings/navigation_binding.dart';
import '../modules/navigation/views/navigation_view.dart';
import '../modules/onboarding_page/bindings/onboarding_page_binding.dart';
import '../modules/onboarding_page/views/onboarding_page_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/register_page/bindings/register_page_binding.dart';
import '../modules/register_page/views/register_page_view.dart';
import '../modules/splash_screen_page/bindings/splash_screen_page_binding.dart';
import '../modules/splash_screen_page/views/splash_screen_page_view.dart';
import '../modules/station/bindings/station_binding.dart';
import '../modules/station/views/station_view.dart';
import '../modules/vehicle/bindings/vehicle_binding.dart';
import '../modules/vehicle/views/vehicle_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN_PAGE,
      page: () => const SplashScreenPageView(),
      binding: SplashScreenPageBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_PAGE,
      page: () => const OnboardingPageView(),
      binding: OnboardingPageBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => LoginPageView(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_PAGE,
      page: () => RegisterPageView(),
      binding: RegisterPageBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD_PAGE,
      page: () => ForgotPasswordPageView(),
      binding: ForgotPasswordPageBinding(),
    ),
    GetPage(
      name: _Paths.NAVIGATION,
      page: () => const NavigationView(),
      binding: NavigationBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.STATION,
      page: () => const StationView(),
      binding: StationBinding(),
    ),
    GetPage(
      name: _Paths.VEHICLE,
      page: () => const VehicleView(),
      binding: VehicleBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_VEHICLE,
      page: () =>  DetailVehicleView(),
      binding: DetailVehicleBinding(),
    ),
  ];
}
