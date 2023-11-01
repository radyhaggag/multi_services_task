import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_strings.dart';
import '../../data/models/category_model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<ChangeTabBarIndex>(_changeTabBarIndex);
    on<ChangeBottomNavBarIndex>(_changeBottomNavBarIndex);
  }

  int bottomNavIndex = 0;

  _changeTabBarIndex(
    ChangeTabBarIndex event,
    Emitter<HomeState> emit,
  ) {
    emit(TabBarIndexChanged(event.index));
  }

  _changeBottomNavBarIndex(
    ChangeBottomNavBarIndex event,
    Emitter<HomeState> emit,
  ) {
    bottomNavIndex = event.index;
    emit(BottomNavBarIndexChanged(event.index));
  }

  List orders = [];
  List services = [];

  List<CategoryModel> categories = const [
    CategoryModel(
      name: AppStrings.constructions,
      imagePath: AppAssets.constructions,
    ),
    CategoryModel(
      name: AppStrings.insurances,
      imagePath: AppAssets.insurances,
    ),
    CategoryModel(
      name: AppStrings.legal,
      imagePath: AppAssets.legal,
    ),
    CategoryModel(
      name: AppStrings.buyAndSell,
      imagePath: AppAssets.buyAndSell,
    ),
    CategoryModel(
      name: AppStrings.accountingServices,
      imagePath: AppAssets.accountingServices,
    ),
  ];
}
