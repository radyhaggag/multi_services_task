import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_fonts.dart';
import '../../data/models/user_model.dart';

class UserTile extends StatelessWidget {
  final UserModel userModel;
  const UserTile({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 48.h,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.03),
              spreadRadius: 0,
              blurRadius: 3,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 15,
              backgroundColor: AppColors.primary,
              child: Text(
                userModel.id.toString(),
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: AppFontSize.body, color: AppColors.white),
              ),
            ),
            SizedBox(width: 12.w),
            Text(
              userModel.name,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: AppFontSize.body),
            ),
            const Spacer(),
            Image.asset(
              AppAssets.arrow,
              width: 24.r,
              height: 24.r,
            ),
          ],
        ),
      ),
    );
  }
}
