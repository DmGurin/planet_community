import 'package:flutter/material.dart';
import 'package:planet_community/screens/venus_screen/venus_dialog/venus_body.dart';
import 'package:planet_community/style/app_colors.dart';

void venusDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return const Dialog(
          backgroundColor: AppColors.DialogTop,
          child: VenusBody(),
        );
      });
}
