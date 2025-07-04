import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:sindhri/core/errors/failure.dart';
import 'package:sindhri/core/errors/server_failure.dart';
import 'package:sindhri/core/services/firestore_service.dart';
import 'package:sindhri/data/models/meal_model.dart';

class MealRepo {
  final FirestoreService firestoreService;

  MealRepo({required this.firestoreService});

  Future<Either<Failure, List<MealModel>>> getMeals() async {
    try {
      var data = await firestoreService.getData(path: 'meals');
      final List<MealModel> meals = (data as List)
          .map((e) => MealModel.fromMap(e))
          .toList();
      return right(meals);
    } on FirebaseException catch (e) {
      return left(ServerFailure.fromFirebaseException(e));
    } on PlatformException catch (e) {
      return left(ServerFailure.fromPlatformException(e));
    } catch (e) {
      return left(ServerFailure("Unexpected error: ${e.toString()}"));
    }
  }
}
