import 'package:flutter/material.dart';
import 'package:sindhri/core/theming/assets_data.dart';


class ProductGrid extends StatelessWidget {
  const ProductGrid();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.7,
      ),
      itemCount: 4,
      itemBuilder: (context, index) => const _ProductCard(),
    );
  }
}

class _ProductCard extends StatelessWidget {
  const _ProductCard();

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
              child: Image.asset(
                AssetsData.splashBurgerTwo,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 150,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
              'Cheese Burger',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff3C2F2F),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.0),
            child: Text(
              "Wendy's Burger",
              style: TextStyle(fontSize: 16, color: Color(0xff3C2F2F)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.star, color: Color(0xffFF9633), size: 16),
                    SizedBox(width: 4),
                    Text(
                      '4.5',
                      style: TextStyle(fontSize: 14, color: Color(0xff3C2F2F)),
                    ),
                  ],
                ),
                Icon(Icons.favorite_border, color: Colors.black, size: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
