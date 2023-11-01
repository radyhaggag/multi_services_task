import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/home/presentation/bloc/home_bloc.dart';
import '../features/home/presentation/screens/home_screen.dart';
import 'injector_container.dart';

abstract class Routes {
  static const home = '/home';
}

abstract class RouteConfig {
  static Route? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<HomeBloc>(
            create: (context) => sl<HomeBloc>(),
            child: const HomeScreen(),
          ),
        );
      default:
        return null;
    }
  }
}
