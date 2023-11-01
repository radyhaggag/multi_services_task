import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../widgets/home_body.dart';
import '../widgets/home_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text(AppStrings.home),
      ),
      body: const HomeBody(),
      bottomNavigationBar: const HomeBottomNavBar(),
    );
  }
}
