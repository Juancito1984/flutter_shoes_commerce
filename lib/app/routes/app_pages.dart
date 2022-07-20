import '../../app/modules/home_screen_module/home_screen_page.dart';
import '../../app/modules/home_screen_module/home_screen_bindings.dart';
import '../../app/modules/home_module/home_bindings.dart';
import '../../app/modules/home_module/home_page.dart';
import 'package:get/get.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.HOME_SCREEN,
      page: () => const HomeScreenPage(),
      binding: HomeScreenBinding(),
      transition: Transition.downToUp,
    ),
  ];
}
