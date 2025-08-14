import 'dart:ui';

import 'package:toku_app/models/item_model.dart';

const Color kPrimaryColor = Color(0XFFFEFEE9);
const Color kNumbersColor = Color(0XFFF09127);
const Color kFamilyColor = Color(0XFF3D873A);
const Color kColors = Color(0XFF5E397C);
const Color kPharasesColor = Color(0XFF6DACC9);

// Numbers  ....... done
final List<ItemModel> numbers = [
  ItemModel(
    image: "assets/images/numbers/number_one.png",
    jpName: "Ichi",
    enName: "One",
    sound: "sounds/numbers/number_one_sound.mp3",
  ),
  ItemModel(
    image: "assets/images/numbers/number_two.png",
    jpName: "Ni",
    enName: "Two",
    sound: "sounds/numbers/number_two_sound.mp3",
  ),
  ItemModel(
    image: "assets/images/numbers/number_three.png",
    jpName: "San",
    enName: "Three",
    sound: "sounds/numbers/number_three_sound.mp3",
  ),
  ItemModel(
    image: "assets/images/numbers/number_four.png",
    jpName: "Shi",
    enName: "Four",
    sound: "sounds/numbers/number_four_sound.mp3",
  ),
  ItemModel(
    image: "assets/images/numbers/number_five.png",
    jpName: "Go",
    enName: "Five",
    sound: "sounds/numbers/number_five_sound.mp3",
  ),
  ItemModel(
    image: "assets/images/numbers/number_six.png",
    jpName: "Roku",
    enName: "Six",
    sound: "sounds/numbers/number_six_sound.mp3",
  ),
  ItemModel(
    image: "assets/images/numbers/number_seven.png",
    jpName: "Sebun",
    enName: "Seven",
    sound: "sounds/numbers/number_seven_sound.mp3",
  ),
  ItemModel(
    image: "assets/images/numbers/number_eight.png",
    jpName: "Hachi",
    enName: "Eight",
    sound: "sounds/numbers/number_eight_sound.mp3",
  ),
  ItemModel(
    image: "assets/images/numbers/number_nine.png",
    jpName: "Kyū",
    enName: "Nine",
    sound: "sounds/numbers/number_nine_sound.mp3",
  ),
  ItemModel(
    image: "assets/images/numbers/number_ten.png",
    jpName: "Jū",
    enName: "Ten",
    sound: "sounds/numbers/number_ten_sound.mp3",
  ),
];

// Family Members ...... done

final List<ItemModel> familyMembers = [
  ItemModel(
    image: "assets/images/family_members/family_father.png",
    jpName: "Chichioya",
    enName: "Father",
    sound: "sounds/family_members/father.wav",
  ),
  ItemModel(
    image: "assets/images/family_members/family_mother.png",
    jpName: "Hahaoya",
    enName: "Mother",
    sound: "sounds/family_members/mother.wav",
  ),
  ItemModel(
    image: "assets/images/family_members/family_son.png",
    jpName: "Musuko",
    enName: "Son",
    sound: "sounds/family_members/son.wav",
  ),
  ItemModel(
    image: "assets/images/family_members/family_daughter.png",
    jpName: "Musume",
    enName: "Daughter",
    sound: "sounds/family_members/daughter.wav",
  ),
  ItemModel(
    image: "assets/images/family_members/family_older_brother.png",
    jpName: "Nisan",
    enName: "Older Brother",
    sound: "sounds/family_members/older bother.wav",
  ),
  ItemModel(
    image: "assets/images/family_members/family_older_sister.png",
    jpName: "Ane",
    enName: "Older Sister",
    sound: "sounds/family_members/older sister.wav",
  ),
  ItemModel(
    image: "assets/images/family_members/family_younger_brother.png",
    jpName: "Otooto",
    enName: "Younger Brother",
    sound: "sounds/family_members/younger brohter.wav",
  ),
  ItemModel(
    image: "assets/images/family_members/family_younger_sister.png",
    jpName: "Imooto",
    enName: "Younger Sister",
    sound: "sounds/family_members/younger sister.wav",
  ),
  ItemModel(
    image: "assets/images/family_members/family_grandfather.png",
    jpName: "Ojiisan",
    enName: "Grand Father",
    sound: "sounds/family_members/grand father.wav",
  ),
  ItemModel(
    image: "assets/images/family_members/family_grandmother.png",
    jpName: "Obaasan",
    enName: "Grand Mother",
    sound: "sounds/family_members/grand mother.wav",
  ),
];

//  Colors  ........ done
final List<ItemModel> colors = [
  ItemModel(
    image: "assets/images/colors/color_black.png",
    jpName: "Burakku",
    enName: "Black",
    sound: "sounds/colors/black.wav",
  ),
  ItemModel(
    image: "assets/images/colors/color_brown.png",
    jpName: "Chairo",
    enName: "Brown",
    sound: "sounds/colors/brown.wav",
  ),
  ItemModel(
    image: "assets/images/colors/color_dusty_yellow.png",
    jpName: "Hokri-ppoi kiiro",
    enName: "Dusty Yellow",
    sound: "sounds/colors/dusty yellow.wav",
  ),
  ItemModel(
    image: "assets/images/colors/color_gray.png",
    jpName: "Gure",
    enName: "Gray",
    sound: "sounds/colors/gray.wav",
  ),
  ItemModel(
    image: "assets/images/colors/color_green.png",
    jpName: "Midori",
    enName: "Green",
    sound: "sounds/colors/green.wav",
  ),
  ItemModel(
    image: "assets/images/colors/color_red.png",
    jpName: "Aka",
    enName: "Red",
    sound: "sounds/colors/red.wav",
  ),
  ItemModel(
    image: "assets/images/colors/color_white.png",
    jpName: "Shiroi",
    enName: "White",
    sound: "sounds/colors/white.wav",
  ),
  ItemModel(
    image: "assets/images/colors/yellow.png",
    jpName: "Ki-iro",
    enName: "Yellow",
    sound: "sounds/colors/yellow.wav",
  ),
];

// Phrases   ........ done
final List<ItemModel> phrases = [
  ItemModel(
    sound: "sounds/phrases/are_you_coming.wav",
    jpName: "Kimasu ka?",
    enName: "Are you coming?",
  ),
  ItemModel(
    sound: "sounds/phrases/dont_forget_to_subscribe.wav",
    jpName: "Wasurezuni tōroku shite kudasai",
    enName: "Don't forget to subscribe",
  ),
  ItemModel(
    sound: "sounds/phrases/how_are_you_feeling.wav",
    jpName: "Kibun wa dō desu ka?",
    enName: "How are you feeling?",
  ),
  ItemModel(
    sound: "sounds/phrases/i_love_anime.wav",
    jpName: "Anime ga daisuki desu",
    enName: "I love anime",
  ),
  ItemModel(
    sound: "sounds/phrases/i_love_programming.wav",
    jpName: "Puroguramingu ga daisuki desu",
    enName: "I love programming",
  ),
  ItemModel(
    sound: "sounds/phrases/programming_is_easy.wav",
    jpName: "Puroguramingu wa kantan desu",
    enName: "Programming is easy",
  ),
  ItemModel(
    sound: "sounds/phrases/what_is_your_name.wav",
    jpName: "Onamae wa nan desu ka?",
    enName: "What is your name?",
  ),
  ItemModel(
    sound: "sounds/phrases/where_are_you_going.wav",
    jpName: "Doko e ikimasu ka?",
    enName: "Where are you going?",
  ),
  ItemModel(
    sound: "sounds/phrases/yes_im_coming.wav",
    jpName: "Hai, ima ikimasu",
    enName: "Yes i am coming",
  ),
];
