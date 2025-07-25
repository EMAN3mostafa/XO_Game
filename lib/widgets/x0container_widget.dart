import 'package:flutter/material.dart';
import 'package:xo_game/utls/app_colors.dart';

class XoContainerWidget extends StatelessWidget {
  final String imagePath;

  const XoContainerWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Material( // ده اللي بيخلي الـ InkWell يشتغل
      color: Colors.transparent, // عشان ميغيرش شكل الكونتينر
      borderRadius: BorderRadius.circular(32), // نفس البوردر بتاع الكونتينر
      child: InkWell(
        onTap: () {
          print('Container tapped!');
        },
        borderRadius: BorderRadius.circular(32), // لازم نكرر البوردر هنا كمان
        child: Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(32),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
