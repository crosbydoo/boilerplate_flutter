import 'package:boilerplate_flutter/core/router/routes.dart';
import 'package:boilerplate_flutter/features/auth/presentation/screens/login_screen.dart';
import 'package:get/get.dart';

class RouteNav {
  static List<GetPage<dynamic>> routes = [
    GetPage(
      name: Routes.login,
      page: () => const LoginScreen(),
      transition: Transition.fadeIn,
    ),
  ];
}
