import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_01/features/home/presentation/widgets/app_bar.dart';
import 'package:flutter_application_01/shared/colors/app_colors.dart';
import 'package:flutter_application_01/shared/widgets/custom_text.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class HomeScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: appBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
        ],
      ),
    );
  }
}
