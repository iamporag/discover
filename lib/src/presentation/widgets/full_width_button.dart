
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FullWidthButton extends StatelessWidget {
  const FullWidthButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      height: 52,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(width: 2, color: Colors.black)),
      child: Center(
        child: Text(
          "See More".toUpperCase(),
          style: GoogleFonts.roboto().copyWith(
            color: Colors.black,
            fontSize: 13,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}