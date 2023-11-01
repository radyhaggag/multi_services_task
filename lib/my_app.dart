import 'package:flutter/material.dart';

import 'config/route_config.dart';
import 'config/theme_config.dart';
import 'core/utils/app_strings.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: ThemeConfig.getLightTheme(),
      onGenerateRoute: RouteConfig.getRoute,
      initialRoute: Routes.home,
    );
  }
}
