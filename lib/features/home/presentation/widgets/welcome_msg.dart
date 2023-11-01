import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_strings.dart';

class WelcomeMsg extends StatelessWidget {
  const WelcomeMsg({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppAssets.avatar),
        SizedBox(width: 4.w),
        const Text(AppStrings.welcomeMsg),
        SizedBox(width: 2.w),
        Image.asset(AppAssets.hand),
      ],
    );
  }
}
