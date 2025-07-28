import 'package:flutter/material.dart';
import 'package:xo_game/screens/game_boarding_scrren.dart';
import 'package:xo_game/screens/play_screen.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute :GameBoardingScreen.routeName,
      routes: {
        GameBoardingScreen.routeName : (context)=> GameBoardingScreen(),
        PlayScreen.routeName : (context)=>PlayScreen(),
      },
    );
  }
}