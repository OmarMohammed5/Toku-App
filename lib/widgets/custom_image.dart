import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 180,
      decoration: BoxDecoration(
        color: Color(0xFFFEEDB5),
        shape: BoxShape.circle,
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.brown.shade300.withValues(alpha: 0.7),
        //     blurRadius: 10,
        //     spreadRadius: 1,
        //     offset: Offset(0, 10),
        //   ),
        // ],
      ),
      child: Center(
        child: Image.asset(
          "assets/images/student.png",
          height: 130,
          width: 130,
        ),
      ),
    );
  }
}
