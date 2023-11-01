part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class TabBarIndexChanged extends HomeState {
  final int index;

  const TabBarIndexChanged(this.index);

  @override
  List<Object> get props => [index];
}

class BottomNavBarIndexChanged extends HomeState {
  final int index;

  const BottomNavBarIndexChanged(this.index);

  @override
  List<Object> get props => [index];
}
