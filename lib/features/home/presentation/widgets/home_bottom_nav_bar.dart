import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/home_bloc.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_strings.dart';

class HomeBottomNavBar extends StatelessWidget {
  const HomeBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: context.read<HomeBloc>().bottomNavIndex,
          onTap: (index) {
            context.read<HomeBloc>().add(ChangeBottomNavBarIndex(index));
          },
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppAssets.home)),
              label: AppStrings.home,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppAssets.assets)),
              label: AppStrings.assets,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppAssets.support)),
              label: AppStrings.support,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AppAssets.profile)),
              label: AppStrings.profile,
            ),
          ],
        );
      },
    );
  }
}
