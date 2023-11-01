import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_fonts.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../bloc/home_bloc.dart';
import '../category_tile.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.categoriesView,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              AppStrings.seeAll,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontSize: AppFontSize.details,
                    color: AppColors.grey,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColors.grey,
                  ),
            )
          ],
        ),
        SizedBox(height: 16.h),
        Column(
          children: List.generate(
            context.read<HomeBloc>().categories.length,
            (index) => Column(
              children: [
                CategoryTile(
                  categoryModel: context.read<HomeBloc>().categories[index],
                ),
                SizedBox(height: 16.h),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
