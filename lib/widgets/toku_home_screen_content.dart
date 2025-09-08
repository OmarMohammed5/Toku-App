import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toku_app/constant.dart';
import 'package:toku_app/screens/colors_screen.dart';
import 'package:toku_app/screens/family_members_screen.dart';
import 'package:toku_app/screens/numbers_screen.dart';
import 'package:toku_app/screens/phrases_screen.dart';
import 'package:toku_app/widgets/custom_button.dart';
import 'package:toku_app/widgets/custom_image.dart';

class TokuHomeScreenContent extends StatelessWidget {
  const TokuHomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Toku",
            style: TextStyle(
              color: Colors.brown.shade700,
              fontSize: 44,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.acme().fontFamily,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Learn Japanese with Toku",
          style: TextStyle(
            color: Colors.brown.shade300,
            fontSize: 24,
            fontFamily: GoogleFonts.acme().fontFamily,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 20),
        CustomImage(),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                color: kNumbersColor,
                icon: CupertinoIcons.number,
                text: "Numbers",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return NumbersScreen();
                      },
                    ),
                  );
                },
              ),
              CustomButton(
                color: kFamilyColor,
                icon: CupertinoIcons.group,
                text: "Family",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return FamilyMembersScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                color: kColors,
                icon: Icons.color_lens_outlined,
                text: "Colors",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ColorsScreen();
                      },
                    ),
                  );
                },
              ),
              CustomButton(
                color: kPharasesColor,
                icon: CupertinoIcons.chat_bubble_text,
                text: "Phrases",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return PhrasesScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
