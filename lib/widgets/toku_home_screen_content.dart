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
            "Toku App",
            style: TextStyle(
              color: Colors.brown.shade700,
              fontSize: 36,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.russoOne().fontFamily,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Learn Japanese with Toku",
          style: TextStyle(
            color: Colors.brown.shade400,
            fontSize: 24,
            fontFamily: GoogleFonts.raleway().fontFamily,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        CustomImage(),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                color: kNumbersColor,
                icon: Icons.numbers,
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
                icon: Icons.group,
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
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                color: kColors,
                icon: Icons.color_lens_sharp,
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
                icon: Icons.group,
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
      ],
    );
  }
}
