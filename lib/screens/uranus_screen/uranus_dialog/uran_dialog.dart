import 'package:flutter/material.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

void uranDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              children: [
                const Text(
                  'data',
                  style: AppTextStyle.textStyle96w700,
                ),
                const SizedBox(
                  height: 50,
                ),
                ClipOval(
                  child: Container(
                      height: 150,
                      width: 150,
                      color: AppColors.botBlue,
                      child: const Center(
                          child: Text(
                        'data',
                        style: AppTextStyle.textStyle26w700,
                      ))),
                ),
              ],
            ),
          ),
        );
      });
}
