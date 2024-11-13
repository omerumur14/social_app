import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomRadiusButton extends StatelessWidget {
  const CustomRadiusButton(
      {required this.onPressed,
      super.key,
      required this.textColor,
      required this.padding,
      required this.radius,
      required this.bgColor,
      required this.text});
  final VoidCallback onPressed;
  final Color textColor;
  final EdgeInsetsGeometry padding;
  final BorderRadiusGeometry radius;
  final Color bgColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: radius,
        ),
        padding: padding,
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          letterSpacing: -0.41,
          color: textColor,
        ),
      ),
    );
  }
}
