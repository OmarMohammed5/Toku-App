import 'package:flutter/material.dart';
import 'package:toku_app/constant.dart';
import 'package:toku_app/models/item_model.dart';
import 'package:toku_app/widgets/custom_app_bar.dart';
import 'package:toku_app/widgets/custom_article_card.dart';

class ColorsScreen extends StatefulWidget {
  const ColorsScreen({super.key});

  @override
  State<ColorsScreen> createState() => _ColorsScreenState();
}

class _ColorsScreenState extends State<ColorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: "Colors"),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          final item = colors[index];
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomArticleCard(
                  color: kColors,
                  item: ItemModel(
                    jpName: item.jpName,
                    enName: item.enName,
                    sound: item.sound,
                    image: item.image!,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
