import 'package:flutter/material.dart';
import 'package:xo_game/utls/app_colors.dart';
import 'package:xo_game/widgets/bord_tile.dart';
import 'package:xo_game/widgets/box_play.dart';
import 'package:xo_game/widgets/divider.dart';
//import 'package:xo_game/widgets/divider.dart';

class PlayScreen extends StatelessWidget{
  static const String routeName = 'play';
  @override
  Widget build(BuildContext context) {
  return SafeArea(
    child: Container(
     decoration: BoxDecoration(
     gradient: LinearGradient(
       begin: Alignment.topLeft,
         end: Alignment.bottomRight,
         colors: [
           AppColors.ligtBlue,
           AppColors.darkBlue
         ]),
     ),
     child: Scaffold(
      backgroundColor: Colors.transparent,
       body: Padding(
         padding: const EdgeInsets.all(16.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
             Container(
               padding: EdgeInsets.symmetric(
                 vertical: 8
               ),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(44),
                 color: AppColors.white,
               ),
               child: Text('00:05',
               style: TextStyle(
                 fontWeight: FontWeight.w600,
                 fontSize: 32,
               ),
               textAlign: TextAlign.center,),
             ),
             SizedBox(
               height: 16,
             ),
             Text('Player 1’s Turn',
             textAlign: TextAlign.center,
             style: TextStyle(
               fontSize: 36,
               fontWeight: FontWeight.bold,
               color: AppColors.white,
             ),),
             SizedBox(
               height: 16,
             ),
             Expanded(
               child: Container(
                 decoration: BoxDecoration(
                   color: AppColors.white,
                   borderRadius: BorderRadius.circular(44),
                 ),
                 child: Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Column(
                     children: [
                       BoxPlay(),
                       MYDivider(),
                       BoxPlay(),
                       MYDivider(),
                       BoxPlay(),
                     ],
                   ),
                 ),
               ),

             )
           ], 
         ),
       ),
     ),
    ),
  );
 }
}