import 'package:flutter/material.dart';

typedef OnPlayerClick = void Function(int);

class BordTile extends StatelessWidget {
  final String symboltext;
  final int index;
  final OnPlayerClick onPlayerClick;

  const BordTile({
    required this.symboltext,
    required this.index,
    required this.onPlayerClick,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPlayerClick(index);
      },
      child: Center(
        child: symboltext.isEmpty
            ? const SizedBox()
            : Image.asset('assets/images/$symboltext.png'),
      ),
    );
  }
}
