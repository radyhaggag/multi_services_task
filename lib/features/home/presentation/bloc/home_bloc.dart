import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_strings.dart';
import '../../data/models/category_model.dart';
import '../../data/models/user_model.dart';
import '../../data/repositories/home_repo.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepo homeRepo;
  HomeBloc({required this.homeRepo}) : super(HomeInitial()) {
    on<ChangeTabBarIndex>(_changeTabBarIndex);
    on<ChangeBottomNavBarIndex>(_changeBottomNavBarIndex);
    on<GetUsers>(_getUsers);
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

  Future<void> _getUsers(
    GetUsers event,
    Emitter<HomeState> emit,
  ) async {
    emit(UsersLoading());

    final data = await homeRepo.getUsers();

    data.fold(
      (failure) => emit(UsersLoadingFailed(failure.message)),
      (result) => emit(UsersLoadingSuccess(result)),
    );
  }
}
