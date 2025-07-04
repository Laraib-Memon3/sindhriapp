import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sindhri/view/manager/meal_cubit/meal_cubit.dart';
import 'package:sindhri/view/widgets/meal_card.dart';

class ProductGrid extends StatefulWidget {
  const ProductGrid({super.key});

  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  @override
  void initState() {
    super.initState();
    context.read<MealCubit>().getMeals();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MealCubit, MealState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state is MealSuccessLoadedState
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.7,
                ),
                itemCount: 4,
                itemBuilder: (context, index) =>
                    MealCard(meals: state.meals[index]),
              )
            : const Center(
                child: CircularProgressIndicator(color: Colors.white),
              );
      },
    );
  }
}
