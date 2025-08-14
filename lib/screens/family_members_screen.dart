import 'package:flutter/material.dart';
import 'package:toku_app/constant.dart';
import 'package:toku_app/models/item_model.dart';
import 'package:toku_app/widgets/custom_app_bar.dart';
import 'package:toku_app/widgets/custom_article_card.dart';

class FamilyMembersScreen extends StatefulWidget {
  const FamilyMembersScreen({super.key});

  @override
  State<FamilyMembersScreen> createState() => _FamilyMembersScreenState();
}

class _FamilyMembersScreenState extends State<FamilyMembersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: "Family"),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          final item = familyMembers[index];
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomArticleCard(
                  color: kFamilyColor,
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
