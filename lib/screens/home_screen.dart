import 'package:flutter/material.dart';
import 'package:toku_app/constant.dart';
import 'package:toku_app/widgets/toku_home_screen_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(child: TokuHomeScreenContent()),
    );
  }
}
