import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sindhri/core/functions/build_snack_bar.dart';
import 'package:sindhri/view/manager/meal_cubit/meal_cubit.dart';
import 'package:sindhri/view/widgets/meal_card.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MealCubit, MealState>(
      listener: (context, state) {
        if (state is MealErrorState) {
          errorSnackBar(context: context, message: state.message.errMessage);
        }
      },
      builder: (context, state) {
        final meals = state is MealSuccessLoadedState
            ? state.meals
            : List.filled(6, null);
        return Skeletonizer(
          enabled: state is !MealSuccessLoadedState,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.7,
            ),
            itemCount: meals.length,
            itemBuilder: (context, index) => MealCard(meals: meals[index]),
          ),
        );
      },
    );
  }
}
