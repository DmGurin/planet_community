import 'package:flutter/material.dart';
import 'package:planet_community/source/widget/ask_dialog/ask_body.dart';
import 'package:planet_community/style/app_colors.dart';


void showAskDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: AppColors.darkBlue,
          child: const AskBody(),
        );
      });
}