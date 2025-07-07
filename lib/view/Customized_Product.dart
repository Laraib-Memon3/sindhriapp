import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomizedBurger extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CustomizedBurgerState();
}

class CustomizedBurgerState extends State<CustomizedBurger> {
  RangeValues valus = RangeValues(0, 100);
  void _increaseRange() {
    setState(() {
      double newEnd = (valus.end + 10).clamp(0, 100);
      valus = RangeValues(valus.start, newEnd);
    });
  }

  void _decreaseRange() {
    setState(() {
      double newEnd = (valus.end - 10).clamp(0, 100);
      valus = RangeValues(valus.start, newEnd);
    });
  }

  List<String> TopingsNamelist = ["Tomato", "Onions", "Pickles", "Becons"];
  List<AssetImage> Topingimages = [];
  List<String> SideOptionlist = ["Fries", "Colslaw", "Salad", "Onions"];
  List<AssetImage> SideOptionimages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.2),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 350,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 4,
                  right: 4,
                  bottom: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image(
                      height: 250,
                      width: 150,
                      image: AssetImage(
                        "assets/images/Customize_Your_Burger.png",
                      ),
                    ),
                    SizedBox(
                      height: 250,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 60,
                            width: 160,
                            child: Text(
                              "Customized Your Burger to your Textes , Ultimate Experience",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),

                          SizedBox(height: 20),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              thumbShape: const RoundSliderThumbShape(
                                enabledThumbRadius: 10,
                              ),
                              trackHeight: 5,
                            ),

                            child: SizedBox(
                              width: 160,
                              child: SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  thumbShape: const RoundSliderThumbShape(
                                    enabledThumbRadius: 20,
                                  ),
                                  trackHeight: 8,
                                ),
                                child: RangeSlider(
                                  divisions: 10,
                                  min: 0,
                                  max: 100,
                                  activeColor: HexColor("#FF0417"),
                                  inactiveColor: Colors.white,
                                  values: valus,

                                  onChanged: (newValues) {
                                    valus = newValues;
                                    setState(() {});
                                  },
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            width: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Mild",
                                  style: TextStyle(color: Colors.green),
                                ),
                                Text(
                                  "Hot",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            height: 50,
                            width: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: _decreaseRange,
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: HexColor("#FF0417"),
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.orange.withOpacity(0.5),
                                          blurRadius: 8,
                                          offset: Offset(0, 3),
                                        ),
                                      ],
                                    ),

                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: _increaseRange,
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: HexColor("#FF0417"),
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.orange.withOpacity(0.5),
                                          blurRadius: 8,
                                          offset: Offset(0, 3),
                                        ),
                                      ],
                                    ),

                                    child: Icon(Icons.add, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Toppings",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 120,
              width: double.infinity,
              child: ListView.builder(
                itemCount: TopingsNamelist.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(12),
                      ),
                      color: Colors.red.withOpacity(0.1),
                      child: Container(
                        width: 100,
                        padding: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,

                          children: [
                            Image.asset(
                              "assets/images/Customize_Your_Burger.png",
                              height: 30,
                              width: 25,
                            ),
                            SizedBox(height: 5),

                            SizedBox(
                              height: 50,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    TopingsNamelist[index],
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(height: 10),
                                  GestureDetector(
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        color: HexColor("#FF0417"),
                                        borderRadius: BorderRadius.circular(12),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.orange.withOpacity(
                                              0.5,
                                            ),
                                            blurRadius: 8,
                                            offset: Offset(0, 3),
                                          ),
                                        ],
                                      ),

                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Side Options",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 120,
              width: double.infinity,
              child: ListView.builder(
                itemCount: SideOptionlist.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(12),
                      ),
                      color: Colors.red.withOpacity(0.1),
                      child: Container(
                        width: 100,
                        padding: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,

                          children: [
                            Image.asset(
                              "assets/images/Customize_Your_Burger.png",
                              height: 30,
                              width: 25,
                            ),
                            SizedBox(height: 5),
                            SizedBox(
                              height: 50,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    SideOptionlist[index],
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(height: 10),
                                  GestureDetector(
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        color: HexColor("#FF0417"),
                                        borderRadius: BorderRadius.circular(12),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.orange.withOpacity(
                                              0.5,
                                            ),
                                            blurRadius: 8,
                                            offset: Offset(0, 3),
                                          ),
                                        ],
                                      ),

                                      child: GestureDetector(
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Text(
                            "Total ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "\$ 9.74",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 200,
                          height: 70,
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
