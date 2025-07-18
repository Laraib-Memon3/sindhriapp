// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sindhri/data/models/meal_model.dart';
import 'package:sindhri/view/payment_screen.dart';

class MealDetailsScreen extends StatefulWidget {
  final MealModel mealModel;

  const MealDetailsScreen({super.key, required this.mealModel});

  @override
  State<MealDetailsScreen> createState() => _Product1State();
}

class _Product1State extends State<MealDetailsScreen> {
  RangeValues values = RangeValues(0, 100);

  void _increaseRange() {
    setState(() {
      double newEnd = (values.end + 10).clamp(0, 100);
      values = RangeValues(values.start, newEnd);
    });
  }

  void _decreaseRange() {
    setState(() {
      double newEnd = (values.end - 10).clamp(0, 100);
      values = RangeValues(values.start, newEnd);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 370,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(40),
                    child: Image.network(
                      widget.mealModel.imageUrl,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 1),
                Text(
                  widget.mealModel.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.orangeAccent, size: 17),
                      SizedBox(width: 3),
                      Text(
                        "${widget.mealModel.rate} - ${widget.mealModel.mins} minutes",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  height: 150,
                  width: 335,
                  child: Text(widget.mealModel.details),
                ),
                SizedBox(height: 20),

                // Range Slider Method Call
                rangeliderAndButtons(),

                SizedBox(height: 50),

                //Order Now button Method Call
                priceOrderNowButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //Method For Creating the RangeSlider and increment and Decrement Buttons

  Widget rangeliderAndButtons() {
    return SizedBox(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Mild", style: TextStyle(color: Colors.green)),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 20),
              trackHeight: 8,
            ),
            child: SizedBox(
              width: 150,
              child: RangeSlider(
                divisions: 10,
                min: 0,
                max: 100,
                activeColor: HexColor("#FF0417"),
                inactiveColor: Colors.white,
                values: values,

                onChanged: (newValues) {
                  values = newValues;
                  setState(() {});
                },
              ),
            ),
          ),
          Text(
            "Hot",
            style: TextStyle(
              color: HexColor("#FF0417"),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 30),
          GestureDetector(
            onTap: _decreaseRange,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: HexColor("#FF0417"),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange.withOpacity(0.5),
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Icon(Icons.remove, color: Colors.white, size: 25),
            ),
          ),
          SizedBox(width: 10),
          GestureDetector(
            onTap: _increaseRange,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: HexColor("#FF0417"),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange.withOpacity(0.5),
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Icon(Icons.add, color: Colors.white, size: 25),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }

  // Method For Price and Order Now Button

  Widget priceOrderNowButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 110,
              height: 140,
              decoration: BoxDecoration(
                color: HexColor("#FF0417"),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  "\$ ${widget.mealModel.price}",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: () {
                //Click event Here on Order Now Button
              },
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return PaymentScreen();
                      },
                    ),
                  );
                },
                child: Container(
                  width: 200,
                  height: 140,
                  decoration: BoxDecoration(
                    color: HexColor("#FF0417"),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      "ORDER NOW",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
