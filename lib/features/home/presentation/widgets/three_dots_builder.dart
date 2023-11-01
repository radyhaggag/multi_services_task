import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';

class ThreeDotsBuilder extends StatelessWidget {
  const ThreeDotsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) {
          if (index == 1) {
            return _Dot(
              color: AppColors.primary,
              width: 32.w,
              height: 7.h,
            );
          }
          return _Dot(color: AppColors.grey100, width: 8.r, height: 8.r);
        },
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  const _Dot({required this.width, required this.height, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.only(left: 4.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: color,
      ),
    );
  }
}
