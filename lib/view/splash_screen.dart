import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sindhri/core/services/firestore_service.dart';
import 'package:sindhri/core/theming/assets_data.dart';
import 'package:sindhri/data/repos/meal_repo.dart';
import 'package:sindhri/view/home_screen.dart';
// import 'package:sindhri/view/home_screen.dart';
import 'package:sindhri/view/loginscreen.dart';
import 'package:sindhri/view/manager/meal_cubit/meal_cubit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(
        builder: (context) {
          return BlocProvider(
            create: (context) => MealCubit(
              mealRepo: MealRepo(firestoreService: FirestoreService()),
            ),
            child: const HomeScreen(),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AssetsData.splash, width: 250, height: 250),
                const SizedBox(height: 20),
              ],
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset(
              AssetsData.splashBurgerOne,
              width: 180,
              height: 180,
              alignment: Alignment.topLeft,
            ),
          ),
          Positioned(
            left: 80,
            bottom: -20,
            child: Image.asset(
              AssetsData.splashBurgerTwo,
              width: 160,
              height: 160,
              alignment: Alignment.topLeft,
            ),
          ),
        ],
      ),
    );
  }
}
