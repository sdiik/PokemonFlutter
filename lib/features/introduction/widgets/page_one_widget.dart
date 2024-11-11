import 'package:flutter/material.dart';
import 'package:flutter_application_01/shared/colors/app_colors.dart';
import 'package:flutter_application_01/shared/widgets/custom_text.dart';
import 'package:introduction_screen/introduction_screen.dart';

var pageOneWidget = PageViewModel(
    titleWidget: const CustomText(
        text: "Pokémon",
        textSize: TextSize.extraLarge,
        color: AppColors.black,
        fontWeight: FontWeight.w600,
        textAlign: TextAlign.center
    ),
    bodyWidget: const CustomText(
        text: "Pokémon is a Japanese media franchise that includes video games, animated series, films, a trading card game, and other related media. The franchise is set in a fictional world where humans and Pokémon, creatures with special powers, live together",
        textSize: TextSize.large,
        color: AppColors.grey,
        fontWeight: FontWeight.normal,
        textAlign: TextAlign.center
    ),
    image:  Image.asset(
      'assets/illustration/illustration_one.jpg',
      height: 250,
    ),
    decoration: const PageDecoration(
        pageColor: AppColors.white
    )
);

