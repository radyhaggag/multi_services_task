part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class ChangeTabBarIndex extends HomeEvent {
  final int index;

  const ChangeTabBarIndex(this.index);

  @override
  List<Object> get props => [index];
}

class ChangeBottomNavBarIndex extends HomeEvent {
  final int index;

  const ChangeBottomNavBarIndex(this.index);

  @override
  List<Object> get props => [index];
}
