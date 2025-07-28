import 'package:flutter/material.dart';
import 'bord_tile.dart';

class BoxPlay extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BordTile(symboltext: 'x'),
          Container(
            color: Colors.black,
            width: 2,
            height: double.infinity,
          ),
          BordTile(symboltext: 'o'),
          Container(
            color: Colors.black,
            width: 2,
            height: double.infinity,
          ),
          BordTile(symboltext: ''),
        ],
      ),
    );
  }
}