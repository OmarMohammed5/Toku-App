import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toku_app/constant.dart';
import 'package:toku_app/models/item_model.dart';

class CustomArticleCard extends StatelessWidget {
  const CustomArticleCard({super.key, required this.color, required this.item});

  final ItemModel item;
  final Color color;

  // مشغّل وصوت حالي مشتركين بين كل البطاقات
  static final AudioPlayer _player = AudioPlayer();
  static String? _currentSource; // المسار الحالي المشغّل

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
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
              item.image!,
              height: 30,
              width: 30,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.jpName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: GoogleFonts.russoOne().fontFamily,
                ),
              ),
              Text(
                item.enName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: GoogleFonts.russoOne().fontFamily,
                ),
              ),
            ],
          ),
          const Spacer(),

          // هنا بنبني الأيقونة حسب حالة المشغّل
          StreamBuilder<PlayerState>(
            stream: _player.onPlayerStateChanged,
            initialData: PlayerState.stopped,
            builder: (context, snapshot) {
              final state = snapshot.data ?? PlayerState.stopped;
              final isThisItemActive = _currentSource == item.sound;
              final isPlayingThis =
                  isThisItemActive && state == PlayerState.playing;

              return IconButton(
                onPressed: () async {
                  if (!isThisItemActive) {
                    _currentSource = item.sound;
                    await _player.play(AssetSource(item.sound));
                    return;
                  }
                  if (state == PlayerState.playing) {
                    await _player.pause();
                  } else if (state == PlayerState.paused) {
                    await _player.resume();
                  } else {
                    await _player.play(AssetSource(item.sound));
                  }
                },
                icon: Icon(
                  isPlayingThis ? Icons.pause : Icons.play_arrow,
                  size: 28,
                  color: Colors.white,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
