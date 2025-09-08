import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toku_app/constant.dart';
import 'package:toku_app/models/item_model.dart';

class CustomPhrasesCard extends StatelessWidget {
  const CustomPhrasesCard({
    super.key,
    required this.jpName,
    required this.enName,
    required this.itemModel,
  });

  final String jpName;
  final String enName;
  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kPharasesColor,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.brown.shade300.withValues(alpha: 0.5),
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                Text(
                  jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontFamily: GoogleFonts.acme().fontFamily,
                  ),
                ),
                Text(
                  enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontFamily: GoogleFonts.acme().fontFamily,
                  ),
                ),
              ],
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(itemModel.sound));
              },
              icon: Icon(Icons.play_arrow, size: 28, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
