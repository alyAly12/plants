part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeSuccessState extends HomeState {
  final List<HomePlantsResponseEntity> homePlantsResponseEntity;

  HomeSuccessState(this.homePlantsResponseEntity);
}

class HomeFailureState extends HomeState {
  final String errorMessage;

  HomeFailureState(this.errorMessage);
}
