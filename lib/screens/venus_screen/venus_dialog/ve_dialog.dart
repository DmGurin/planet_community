import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planet_community/screens/venus_screen/venus_dialog/ve_body.dart';
import 'package:planet_community/style/app_colors.dart';

void veDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return const Dialog(
          backgroundColor: AppColors.black,
          child: VeBody(),
        );
      });
}
