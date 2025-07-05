import 'package:flutter/material.dart';

void successSnackBar({required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 4),
      content: customSnackbar(
        message: message,
        color: Colors.green,
        icon: Icons.check_circle,
        titleWord: "Success",
        context: context,
      ),
    ),
  );
}

void errorSnackBar({required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 4),
      content: customSnackbar(
        message: message,
        color: Colors.red,
        icon: Icons.cancel,
        titleWord: "Error",
        context: context,
      ),
    ),
  );
}

Widget customSnackbar({
  required String titleWord,
  required String message,
  required Color color,
  required IconData icon,
  required BuildContext context,
}) {
  bool isArabic = Directionality.of(context) == TextDirection.rtl;
  return ClipRRect(
    borderRadius: BorderRadius.circular(12),
    child: Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: const BorderSide(color: Colors.transparent),
          left: isArabic
              ? const BorderSide(color: Colors.transparent)
              : BorderSide(color: color, width: 10),
          right: isArabic
              ? BorderSide(color: color, width: 10)
              : const BorderSide(color: Colors.transparent),
          top: const BorderSide(color: Colors.transparent),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 10),
          Icon(icon, color: color, size: 30),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titleWord,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  message,
                  // overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
