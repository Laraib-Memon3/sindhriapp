import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sindhri/core/theming/assets_data.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final icons = [
      AssetsData.homeIcon,
      AssetsData.userIcon,
      AssetsData.comment,
      AssetsData.heartIcon,
    ];

    return BottomAppBar(
      color: const Color(0xffFF0013),
      shape: const CircularNotchedRectangle(),
      notchMargin: 10.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (int i = 0; i < 2; i++)
            IconButton(
              icon: SvgPicture.asset(
                icons[i],
                width: 24,
                height: 24,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
              onPressed: () {},
            ),
          const SizedBox(width: 40),
          for (int i = 2; i < icons.length; i++)
            IconButton(
              icon: SvgPicture.asset(
                icons[i],
                width: 24,
                height: 24,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
              onPressed: () {},
            ),
        ],
      ),
    );
  }
}
