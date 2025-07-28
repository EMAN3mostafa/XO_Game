import 'package:flutter/material.dart';

class BordTile extends StatelessWidget{
  String symboltext;
  BordTile({required this.symboltext});
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: InkWell(
        onTap:(){

        } ,
        child: symboltext.isEmpty ? SizedBox() :
        Image.asset('assets/images/$symboltext.png')),

    );
  }
}