import 'package:flutter/material.dart';
import 'package:flutter_application_01/features/home/presentation/widgets/notification_widget.dart';
import 'package:flutter_application_01/shared/colors/app_colors.dart';
import 'package:flutter_application_01/shared/widgets/custom_text.dart';

AppBar appBar(BuildContext context) {
  return AppBar(
    title: const CustomText(
        text: "Pokemon",
        textSize: TextSize.large,
        color: AppColors.black,
        fontWeight: FontWeight.w500,
        textAlign: TextAlign.left),
    actions: const [NotificationWidget(), SizedBox(width: 24)],
    backgroundColor: AppColors.white,
    bottomOpacity: 0,
    elevation: 0,
    automaticallyImplyLeading: false,
  );
}
