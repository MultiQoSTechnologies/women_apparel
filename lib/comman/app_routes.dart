import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:women_apparel/ui/home_page.dart';
import 'package:women_apparel/ui/second_page.dart';
import 'package:women_apparel/ui/third_page.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.HomePage,
      page: () => const HomePage(),
    ),
    GetPage(
      name: Routes.SecondPage,
      page: () => const SecondPage(),
    ),
    GetPage(
      name: Routes.ThirdPage,
      page: () => ThirdPage(),
    ),
  ];
}

abstract class Routes {
  static const HomePage = '/HomePage';
  static const SecondPage = '/SecondPage';
  static const ThirdPage = '/ThirdPage';
}
