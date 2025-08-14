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
      ),
      child: Center(
        child: Image.asset("assets/images/std.png", height: 130, width: 130),
      ),
    );
  }
}
