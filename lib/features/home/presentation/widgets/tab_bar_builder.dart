import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../bloc/home_bloc.dart';
import 'views/categories_view.dart';
import 'views/orders_view.dart';
import 'views/services_view.dart';

class TabBarBuilder extends StatelessWidget {
  const TabBarBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: AppColors.grey50,
                width: 1,
              ),
            ),
            child: ButtonsTabBar(
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(360),
              ),
              buttonMargin: const EdgeInsets.symmetric(horizontal: 8),
              labelStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: AppColors.grey50),
              unselectedLabelStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: AppColors.black),
              unselectedDecoration: BoxDecoration(
                color: AppColors.grey50,
                borderRadius: BorderRadius.circular(360),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              splashColor: AppColors.grey50,
              radius: 50,
              height: 30.h,
              onTap: (index) {
                context.read<HomeBloc>().add(ChangeTabBarIndex(index));
              },
              tabs: [
                const Tab(
                  text: AppStrings.categories,
                ),
                const Tab(
                  text: AppStrings.services,
                ),
                Tab(
                  text:
                      "${AppStrings.orders} (${context.read<HomeBloc>().orders.length})",
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: TabBarView(
                children: [
                  CategoriesView(),
                  ServicesView(),
                  OrdersView(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
