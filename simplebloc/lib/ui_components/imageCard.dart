import 'package:flutter/material.dart';

Widget imageCard(String imagePath) {
  //Contains Image with Color Overlay.
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      image: DecorationImage(
        image: AssetImage(imagePath),
        colorFilter: ColorFilter.mode(
          Colors.black.withOpacity(0.5),
          BlendMode.multiply,
        ),
        fit: BoxFit.cover,
      ),
    ),
  );
}
