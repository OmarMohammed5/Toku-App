// import 'package:flutter/material.dart';
// import 'package:toku_app/constant.dart';
// import 'package:toku_app/models/item_model.dart';
// import 'package:toku_app/widgets/custom_app_bar.dart';
// import 'package:toku_app/widgets/custom_article_card.dart';

// class ColorsScreen extends StatefulWidget {
//   const ColorsScreen({super.key});

//   @override
//   State<ColorsScreen> createState() => _ColorsScreenState();
// }

// class _ColorsScreenState extends State<ColorsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppBar(text: "Colors"),
//       body: ListView.builder(
//         itemCount: colors.length,
//         itemBuilder: (context, index) {
//           final item = colors[index];
//           return Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: CustomArticleCard(
//                     color: kColors,
//                     item: ItemModel(
//                       jpName: item.jpName,
//                       enName: item.enName,
//                       sound: item.sound,
//                       image: item.image!,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: CustomAppBar(text: "Colors"),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          final item = colors[index];
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.03,
              vertical: screenHeight * 0.005,
            ),
            child: CustomArticleCard(
              color: kColors,
              item: ItemModel(
                jpName: item.jpName,
                enName: item.enName,
                sound: item.sound,
                image: item.image!,
              ),
            ),
          );
        },
      ),
    );
  }
}
