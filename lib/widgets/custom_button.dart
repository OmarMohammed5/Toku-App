import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.icon,
    this.onTap,
    required this.color,
  });

  final String text;
  final IconData icon;
  final void Function()? onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onTap,
      child: Container(
        height: screenWidth * 0.35,
        width: screenWidth * 0.35,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.brown.shade300.withValues(alpha: 0.7),
              blurRadius: 10,
              spreadRadius: 1,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white, size: screenWidth * 0.1),
              SizedBox(height: screenWidth * 0.03),
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth * 0.05,
                  fontFamily: GoogleFonts.acme().fontFamily,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
