import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomButtom extends StatelessWidget {
  CustomButtom({super.key, this.ontap, required this.text});
  VoidCallback? ontap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: GestureDetector(
        onTap: ontap,

        // Container for submit button
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: const Color(0xFF6D1B7B).withOpacity(0.8),
          ),

          // Submit text centered
          child: Center(
            // Submit text here
            child: Text(
              text,
              style: GoogleFonts.inter(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFFFFFFF),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
