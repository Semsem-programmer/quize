import 'package:flutter/material.dart';

class LetterCard extends StatelessWidget {
  final String letter;
  final Color color;

  const LetterCard({super.key, required this.color, required this.letter});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.blue,
            blurRadius: 5.0,
            spreadRadius: 0.1,
            offset: Offset(0.0, 3.0),
          )
        ],
        gradient: LinearGradient(
          colors: [
            color.withOpacity(0.9),
            color,
          ],
        ),
        shape: BoxShape.circle,
      ),
      child: Text(
        letter,
        style: const TextStyle(
          fontSize: 65,
          color: Colors.black,
        ),
      ),
    );
  }
}
