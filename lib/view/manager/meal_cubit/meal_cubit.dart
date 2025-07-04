import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sindhri/core/errors/failure.dart';
import 'package:sindhri/data/models/meal_model.dart';
import 'package:sindhri/data/repos/meal_repo.dart';

part 'meal_state.dart';

class MealCubit extends Cubit<MealState> {
  MealCubit({required this.mealRepo}) : super(MealInitialState());
  final MealRepo mealRepo;
  Future<void> getMeals() async {
    emit(MealLoadingState());
    final meals = await mealRepo.getMeals();
    meals.fold(
      (errMessage) => emit(MealErrorState(message: errMessage)),
      (mealModel) => emit(MealSuccessLoadedState(meals: mealModel)),
    );
  }
}
