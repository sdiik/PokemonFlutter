import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_01/features/introduction/providers/state/intro_screen_state.dart';
import 'package:flutter_application_01/features/introduction/widgets/page_one_widget.dart';
import 'package:flutter_application_01/features/introduction/widgets/page_two_widget.dart';
import 'package:flutter_application_01/shared/colors/app_colors.dart';
import 'package:flutter_application_01/shared/widgets/custom_text.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:introduction_screen/introduction_screen.dart';

@RoutePage()
class IntroScreen extends ConsumerStatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<IntroScreen> createState() => _IntroScreen();
}

class _IntroScreen extends ConsumerState<IntroScreen> {
  final _introKey = GlobalKey<IntroductionScreenState>();
  final IntroScreenState _introScreenState = IntroScreenState();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: _introKey,
      pages: [pageOneWidget, pageTwoWidget],
      onDone: () {
        _introScreenState.routeToHome(context);
      },
      scrollPhysics: const ClampingScrollPhysics(),
      showDoneButton: true,
      showNextButton: true,
      showSkipButton: true,
      skip: const CustomText(
          text: "Skip",
          textSize: TextSize.medium,
          color: AppColors.black,
          fontWeight: FontWeight.w600,
          textAlign: TextAlign.left),
      next: const CustomText(
          text: "Next",
          textSize: TextSize.medium,
          color: AppColors.black,
          fontWeight: FontWeight.w600,
          textAlign: TextAlign.left),
      done: const CustomText(
          text: "Done",
          textSize: TextSize.medium,
          color: AppColors.black,
          fontWeight: FontWeight.w600,
          textAlign: TextAlign.left),
    );
  }
}
