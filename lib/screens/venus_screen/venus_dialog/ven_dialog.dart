import 'package:flutter/material.dart';
import 'package:planet_community/screens/venus_screen/venus_dialog/ven_body.dart';
import 'package:planet_community/style/app_colors.dart';

void venDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return const Dialog(
          backgroundColor: AppColors.lightBlue,
          child: VenBody(),
        );
      });
}
