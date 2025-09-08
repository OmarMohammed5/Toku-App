import 'package:flutter/material.dart';
import 'package:toku_app/constant.dart';
import 'package:toku_app/models/item_model.dart';
import 'package:toku_app/widgets/custom_app_bar.dart';
import 'package:toku_app/widgets/custom_article_card.dart';

class NumbersScreen extends StatefulWidget {
  const NumbersScreen({super.key});

  @override
  State<NumbersScreen> createState() => _NumbersScreenState();
}

class _NumbersScreenState extends State<NumbersScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHieght = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: CustomAppBar(text: "Numbers"),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          final item = numbers[index];
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.03,
              vertical: screenHieght * 0.005,
            ),
            child: Column(
              children: [
                CustomArticleCard(
                  color: kNumbersColor,
                  item: ItemModel(
                    jpName: item.jpName,
                    enName: item.enName,
                    sound: item.sound,
                    image: item.image,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
