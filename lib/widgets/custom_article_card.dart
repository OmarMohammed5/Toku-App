import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toku_app/constant.dart';
import 'package:toku_app/models/item_model.dart';

class CustomArticleCard extends StatefulWidget {
  const CustomArticleCard({super.key, required this.color, required this.item});

  final ItemModel item;
  final Color color;

  @override
  State<CustomArticleCard> createState() => _CustomArticleCardState();
}

class _CustomArticleCardState extends State<CustomArticleCard> {
  bool isPlaying = false;

  /// controller of AudioPlayer
  final AudioPlayer _player = AudioPlayer();

  @override
  void initState() {
    super.initState();

    /// Listen to >>> is playing = display puse icon
    _player.onPlayerComplete.listen((event) {
      /// update
      setState(() {
        isPlaying = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: widget.color,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.brown.shade300.withValues(alpha: 0.5),
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Image.asset(
              widget.item.image!,
              height: 30,
              width: 30,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                widget.item.jpName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: GoogleFonts.acme().fontFamily,
                ),
              ),
              Text(
                widget.item.enName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: GoogleFonts.acme().fontFamily,
                ),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () async {
              if (isPlaying) {
                await _player.pause();
                setState(() => isPlaying = false);
              } else {
                await _player.play(AssetSource(widget.item.sound));
                setState(() => isPlaying = true);
              }
            },
            icon: Icon(
              isPlaying ? Icons.pause : Icons.play_arrow,
              size: 28,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
