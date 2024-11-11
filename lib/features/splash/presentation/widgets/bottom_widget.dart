import 'package:flutter/material.dart';
import 'package:flutter_application_01/shared/colors/app_colors.dart';
import 'package:flutter_application_01/shared/widgets/custom_text.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: const Column(
        children: [
          Spacer(),
          CircularProgressIndicator(),
          SizedBox(height: 16),
          CustomText(
              text: "by Inside Of Art",
              textSize: TextSize.small,
              color: AppColors.black,
              fontWeight: FontWeight.normal,
              textAlign: TextAlign.center),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
