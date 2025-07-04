import 'package:flutter/material.dart';
import 'package:sindhri/data/models/meal_model.dart';

class MealCard extends StatelessWidget {
  const MealCard({super.key, required this.meals});
  final MealModel meals;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.network(meals.imageUrl, width: double.infinity),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Text(
              meals.title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff3C2F2F),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Text(
              meals.subTitle,
              style: TextStyle(fontSize: 16, color: Color(0xff3C2F2F)),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.star, color: Color(0xffFF9633), size: 16),
                    SizedBox(width: 4),
                    Text(
                      meals.rate.toString(),
                      style: TextStyle(fontSize: 14, color: Color(0xff3C2F2F)),
                    ),
                  ],
                ),
                Icon(Icons.favorite_border, color: Colors.black, size: 24),
              ],
            ),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
