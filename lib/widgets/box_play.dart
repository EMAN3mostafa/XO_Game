import 'package:flutter/material.dart';
import 'package:xo_game/widgets/bord_tile.dart';

class BoxPlay extends StatelessWidget {
  final List<String> rowItems;
  final int rowIndex;
  final OnPlayerClick onTileClick;

  BoxPlay({
    required this.rowItems,
    required this.rowIndex,
    required this.onTileClick,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(3, (colIndex) {
          int index = rowIndex * 3 + colIndex;
          return Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BordTile(
                    symboltext: rowItems[colIndex],
                    index: index,
                    onPlayerClick: onTileClick,
                  ),
                ),
                if (colIndex != 2)
                  Container(
                    color: Colors.black,
                    width: 3,
                    height: double.infinity,
                  ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
