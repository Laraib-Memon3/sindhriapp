part of 'meal_cubit.dart';

sealed class MealState extends Equatable {
  const MealState();

  @override
  List<Object> get props => [];
}

final class MealInitialState extends MealState {}

final class MealLoadingState extends MealState {}

final class MealSuccessLoadedState extends MealState {
  final List<MealModel> meals;
  const MealSuccessLoadedState({required this.meals});
}

final class MealErrorState extends MealState {
  final Failure message;
  const MealErrorState({required this.message});
}
