import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sindhri/core/theming/assets_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sindhri',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // SvgPicture.asset(
                  //   'assets/images/profile.svg',
                  //   width: 50,
                  //   height: 50,
                  // ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    // child: Image.asset(
                    //   AssetsData.profileIcon,
                    //   width: 50,
                    //   height: 50,
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                child: Text(
                  'Order your favorite food.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffD9D9D9),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',

                        hintStyle: TextStyle(
                          color: Color(0xff3C2F2F),
                          fontSize: 16,
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset(
                            AssetsData.searchIcon,
                            width: 20,
                            height: 20,
                            colorFilter: ColorFilter.mode(
                              Color(0xff3C2F2F),
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                        filled: true,
                        fillColor: Color(0xffFFFFFF),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 16,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.white.withOpacity(0.3),
                            width: 1,
                          ),
                        ),
                      ),
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        // Search action
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffFF0215),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: SvgPicture.asset(
                          AssetsData.settingsSlidersIcon,
                          width: 20,
                          height: 20,
                          colorFilter: ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Action for the first button
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffFF0215),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5.0,
                          vertical: 5.0,
                        ),
                        child: Text(
                          'All',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Action for the second button
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffFFFFFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5.0,
                          vertical: 5.0,
                        ),
                        child: Text(
                          'Combos',
                          style: TextStyle(
                            color: Color(0xff6A6A6A),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Action for the third button
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffFFFFFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5.0,
                          vertical: 5.0,
                        ),
                        child: Text(
                          'Sliders',
                          style: TextStyle(
                            color: Color(0xff6A6A6A),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Action for the fourth button
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffFFFFFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5.0,
                          vertical: 5.0,
                        ),
                        child: Text(
                          'Classics',
                          style: TextStyle(
                            color: Color(0xff6A6A6A),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: 4, // Number of items in the grid
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset(
                                AssetsData
                                    .splashBurgerTwo, // Replace with actual image asset
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 150,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Cheese Burger',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff3C2F2F),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 4.0,
                            ),
                            child: Text(
                              'Wendy\'s Burger',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff3C2F2F),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 4.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color(0xffFF9633),
                                      size: 16,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      '4.5',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff3C2F2F),
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.favorite_border,
                                  color: Color(0xff000000),
                                  size: 24,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add action for the floating action button
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          backgroundColor: Color(0xffFF0215),
          child: SvgPicture.asset(
            AssetsData.addIcon,
            width: 24,
            height: 24,
            colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Color(0xffFF0013),
          shape: CircularNotchedRectangle(),
          notchMargin: 10.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  AssetsData.homeIcon,
                  width: 24,
                  height: 24,
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
                onPressed: () {
                  // Home action
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                  AssetsData.userIcon,
                  width: 24,
                  height: 24,
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
                onPressed: () {
                  // Search action
                },
              ),
              SizedBox(width: 40), // Space for the floating action button
              IconButton(
                icon: SvgPicture.asset(
                  AssetsData.comment,
                  width: 24,
                  height: 24,
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
                onPressed: () {
                  // Favorites action
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                  AssetsData.heartIcon,
                  width: 24,
                  height: 24,
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
                onPressed: () {
                  // Profile action
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
