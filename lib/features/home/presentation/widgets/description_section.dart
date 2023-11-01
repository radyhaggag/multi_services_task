import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_fonts.dart';
import '../../../../core/utils/app_strings.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.appName,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(fontSize: AppFontSize.subTitle),
        ),
        SizedBox(height: 4.h),
        Text(
          AppStrings.appDescription,
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(fontSize: AppFontSize.details),
        ),
      ],
    );
  }
}
