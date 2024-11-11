import 'package:flutter/material.dart';
import 'package:flutter_application_01/shared/colors/app_colors.dart';
import 'package:flutter_application_01/shared/widgets/custom_text.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height / 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assets/images/image_pokemon.png',
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 8),
            const CustomText(
                text: "POKEMON",
                textSize: TextSize.extraLarge,
                color: AppColors.black,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.center),
            const CustomText(
                text: "search for your favorite pokemon",
                textSize: TextSize.medium,
                color: AppColors.black,
                fontWeight: FontWeight.normal,
                textAlign: TextAlign.center),
          ],
        ));
  }
}

