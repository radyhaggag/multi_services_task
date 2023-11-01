import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';

class AssetsScreen extends StatelessWidget {
  const AssetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(AppStrings.assets),
      ),
    );
  }
}
