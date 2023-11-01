import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_fonts.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../bloc/home_bloc.dart';
import '../user_tile.dart';

class UsersView extends StatelessWidget {
  const UsersView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.usersView,
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
          BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
            if (state is UsersLoadingFailed) {
              return Center(
                child: Text(state.message),
              );
            } else if (state is UsersLoadingSuccess) {
              return Column(
                children: List.generate(
                  state.users.length,
                  (index) => Column(
                    children: [
                      UserTile(
                        userModel: state.users[index],
                      ),
                      SizedBox(height: 16.h),
                    ],
                  ),
                ),
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
        ],
      ),
    );
  }
}
