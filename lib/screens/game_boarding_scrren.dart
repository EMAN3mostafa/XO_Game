import 'package:flutter/material.dart';
import 'package:xo_game/utls/app_colors.dart';

class GameBoardingScreen extends StatelessWidget{
  static const String routeName = 'bording';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Image.asset('assets/images/backgroundxo.png',width: double.infinity,
          height: double.infinity ,
          fit: BoxFit.fill,),
          Scaffold(
        backgroundColor: Colors.transparent,
            body: Column(
              mainAxisAlignment:MainAxisAlignment.end,
              children: [
               Text('Pick who goes first?',
               style: TextStyle(
                 fontSize: 24,
                 fontWeight: FontWeight.w500,
                 color: AppColors.white,
               ),) ,
                Row(
                  children: [

                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// return Container(
// decoration: BoxDecoration(
// image: DecorationImage(
// fit: BoxFit.fill,
// image:AssetImage
// ('assets/images/backgroundxo.png'),
// ),
// ),
// child: Scaffold(
// backgroundColor: Colors.transparent,
// ),
// );