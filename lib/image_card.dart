import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {

  final String imageString;

  const ImageCard({super.key, required this.imageString});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Colors.blue,
          width: 7,
        ),
      ),
      child: Image.asset(
        imageString,
        width: 200,
        height: 200,
      ),
    );
  }
}
