import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';

class PresentationSection extends StatelessWidget {
  const PresentationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355.w,
      height: 152.h,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.lightRed,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.appName,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  width: 128.w,
                  height: 32.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(AppStrings.order),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 144,
            height: 144,
            child: Image.asset(AppAssets.manPresentation),
          )
        ],
      ),
    );
  }
}
