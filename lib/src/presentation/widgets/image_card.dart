
import 'package:flutter/material.dart';

class ImageCardStyle extends StatelessWidget {
  // final double width;
  final double height;
  final String imagePath;
  const ImageCardStyle({
    super.key,
    // required this.width,
    required this.height,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}