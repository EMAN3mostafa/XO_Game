import 'package:flutter/material.dart';
import 'package:xo_game/utls/app_colors.dart';
import 'package:xo_game/widgets/x0container_widget.dart';

class GameBoardingScreen extends StatelessWidget {
  static const String routeName = 'bording';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/backgroundxo.png',
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Pick who goes first?',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: AppColors.white,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: XoContainerWidget(
                            imagePath: 'assets/images/image x.png',
                          ),
                        ),
                        const SizedBox(width: 20),
                        Flexible(
                          child: XoContainerWidget(
                            imagePath: 'assets/images/image o.png',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
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
