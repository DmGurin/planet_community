import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planet_community/source/svg.dart';
import 'package:planet_community/source/widget/custom_dialog/custom_dialog_body.dart';

void customDialog({
  BuildContext? context,
  Function? onTapLeftButton,
  Function? onTapRightButton,
  String? minTemp,
  String? maxTemp,
  String? minQuake,
  String? maxQuake,
}) {
  showDialog(
    context: context!,
    barrierDismissible: true,
    builder: (context) {
      return Dialog(
        elevation: 0,
        backgroundColor: Colors.transparent,
        alignment: Alignment.bottomCenter,
        insetPadding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomDialogBody(
              onTapLeftButton: onTapLeftButton!,
              onTapRightButton: onTapRightButton!,
              minTemp: minTemp!,
              maxTemp: maxTemp!,
              minQuake: minQuake!,
              maxQuake: maxQuake!,
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: SizedBox(
                height: 50,
                width: 50,
                child: SvgPicture.asset(AppSvg.cross),
              ),
            ),
          ],
        ),
      );
    },
  );
}
