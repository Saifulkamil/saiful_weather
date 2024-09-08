import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/onboard/bindings/onboard_binding.dart';
import '../modules/onboard/views/onboard_view.dart';
import '../modules/searchlocation/bindings/searchlocation_binding.dart';
import '../modules/searchlocation/views/searchlocation_view.dart';
import '../modules/weatherdetail/bindings/weatherdetail_binding.dart';
import '../modules/weatherdetail/views/weatherdetail_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARD;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARD,
      page: () => const OnboardView(),
      binding: OnboardBinding(),
    ),
    GetPage(
      name: _Paths.WEATHERDETAIL,
      page: () => const WeatherdetailView(),
      binding: WeatherdetailBinding(),
    ),
    GetPage(
      name: _Paths.SEARCHLOCATION,
      page: () => const SearchlocationView(),
      binding: SearchlocationBinding(),
    ),
  ];
}
