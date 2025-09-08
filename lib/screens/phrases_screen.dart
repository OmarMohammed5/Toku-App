import 'package:flutter/material.dart';
import 'package:toku_app/constant.dart';
import 'package:toku_app/widgets/custom_app_bar.dart';
import 'package:toku_app/widgets/custom_phrases_card.dart';

class PhrasesScreen extends StatefulWidget {
  const PhrasesScreen({super.key});

  @override
  State<PhrasesScreen> createState() => _PhrasesScreenState();
}

class _PhrasesScreenState extends State<PhrasesScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHieght = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: CustomAppBar(text: "Phrases"),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          final item = phrases[index];
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.03,
              vertical: screenHieght * 0.005,
            ),
            child: Column(
              children: [
                CustomPhrasesCard(
                  jpName: item.jpName,
                  enName: item.enName,
                  itemModel: item,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
