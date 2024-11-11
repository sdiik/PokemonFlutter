import 'package:flutter/material.dart';
import 'package:flutter_application_01/shared/colors/app_colors.dart';
import 'package:flutter_application_01/shared/widgets/custom_text.dart';
import 'package:introduction_screen/introduction_screen.dart';

var pageTwoWidget = PageViewModel(
    titleWidget: const CustomText(
        text: "Pokémon",
        textSize: TextSize.extraLarge,
        color: AppColors.black,
        fontWeight: FontWeight.w600,
        textAlign: TextAlign.center
    ),
    bodyWidget: const CustomText(
        text: "The original Pokémon is a role-playing game based around building a small team of monsters to battle other monsters in a quest to become the best. Pokémon are divided into types, such as water and fire, each with different strengths. Battles between them can be likened to the simple hand game rock-paper-scissors.",
        textSize: TextSize.large,
        color: AppColors.grey,
        fontWeight: FontWeight.normal,
        textAlign: TextAlign.center
    ),
    image:  Image.asset(
      'assets/illustration/illustration_two.jpg',
      height: 250,
    ),
    decoration: const PageDecoration(
        pageColor: AppColors.white
    )
);