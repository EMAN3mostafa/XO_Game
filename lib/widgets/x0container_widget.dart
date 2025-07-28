import 'package:flutter/material.dart';
import 'package:xo_game/screens/play_screen.dart';
import 'package:xo_game/utls/app_colors.dart';

class XoContainerWidget extends StatelessWidget {
  final String imagePath;
  final String player;

  const XoContainerWidget({
    super.key,
    required this.imagePath,
    required this.player,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(32),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PlayScreen(firstPlayer: player),
            ),
          );
        },
        borderRadius: BorderRadius.circular(32),
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
