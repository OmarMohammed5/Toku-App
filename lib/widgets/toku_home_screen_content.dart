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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: screenHeight * 0.03,
          horizontal: screenWidth * 0.05,
        ),
        child: Column(
          children: [
            Text(
              "Toku",
              style: TextStyle(
                color: Colors.brown.shade700,
                fontSize: screenWidth * 0.1, // responsive text size
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.acme().fontFamily,
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Text(
              "Learn Japanese with Toku",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.brown.shade300,
                fontSize: screenWidth * 0.05,
                fontFamily: GoogleFonts.acme().fontFamily,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            CustomImage(),
            SizedBox(height: screenHeight * 0.04),

            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    color: kNumbersColor,
                    icon: CupertinoIcons.number,
                    text: "Numbers",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NumbersScreen(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(width: screenWidth * 0.04),
                Expanded(
                  child: CustomButton(
                    color: kFamilyColor,
                    icon: CupertinoIcons.group,
                    text: "Family",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FamilyMembersScreen(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.03),

            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    color: kColors,
                    icon: Icons.color_lens_outlined,
                    text: "Colors",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ColorsScreen()),
                      );
                    },
                  ),
                ),
                SizedBox(width: screenWidth * 0.04),
                Expanded(
                  child: CustomButton(
                    color: kPharasesColor,
                    icon: CupertinoIcons.chat_bubble_text,
                    text: "Phrases",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PhrasesScreen(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
