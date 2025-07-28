import 'package:flutter/material.dart';
import 'package:xo_game/utls/app_colors.dart';
import 'package:xo_game/widgets/box_play.dart';
import 'package:xo_game/widgets/divider.dart';

class PlayScreen extends StatefulWidget {
  static const String routeName = 'play';

  final String firstPlayer;

  const PlayScreen({super.key, required this.firstPlayer});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  List<String> boardState = List.filled(9, '');
  late String currentPlayer;

  @override
  void initState() {
    super.initState();
    currentPlayer = widget.firstPlayer;
  }

  void handleTileClick(int index) {
    if (boardState[index].isNotEmpty) return;

    setState(() {
      boardState[index] = currentPlayer;
      currentPlayer = currentPlayer == 'x' ? 'o' : 'x';
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [AppColors.ligtBlue, AppColors.darkBlue],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Timer
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(44),
                    color: AppColors.white,
                  ),
                  child: Text(
                    '00:05',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 32,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 16),
                // Player turn
                Text(
                  currentPlayer == 'x' ? 'Player X’s Turn' : 'Player O’s Turn',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
                SizedBox(height: 16),
                // Board
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
                          BoxPlay(
                            rowItems: boardState.sublist(0, 3),
                            rowIndex: 0,
                            onTileClick: handleTileClick,
                          ),
                          MYDivider(),
                          BoxPlay(
                            rowItems: boardState.sublist(3, 6),
                            rowIndex: 1,
                            onTileClick: handleTileClick,
                          ),
                          MYDivider(),
                          BoxPlay(
                            rowItems: boardState.sublist(6, 9),
                            rowIndex: 2,
                            onTileClick: handleTileClick,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
