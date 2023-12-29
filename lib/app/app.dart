import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:boilerplate_flutter/core/router/navigation.dart';
import 'package:boilerplate_flutter/core/router/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter BoilerPlate',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      getPages: RouteNav.routes,
      initialRoute: Routes.login,
    );
  }
}
