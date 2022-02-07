import 'package:flutter/material.dart';
import 'package:planet_community/source/images.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class UranusProfileScreen extends StatefulWidget {
  const UranusProfileScreen({Key? key}) : super(key: key);

  @override
  _UranusProfileScreenState createState() => _UranusProfileScreenState();
}

class _UranusProfileScreenState extends State<UranusProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.darkBlue,
              AppColors.darkGrey,
            ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            const Text(
              'URANUS',
              style: AppTextStyle.textStyle96w700,
            ),
            const Text(
              'THE COOLED PLANET',
              style: AppTextStyle.textStyle14w700,
            ),
            Container(
              margin: const EdgeInsets.only(top: 23),
              height: 39,
              width: 40,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.9,
                    color: AppColors.white,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(100))),
              child: const Center(
                  child: Text(
                '360 VIEW',
                style: AppTextStyle.textStyle18w700,
                textAlign: TextAlign.center,
              )),
            ),
            const Spacer(),
            Image.asset(
              AppImages.biguranus,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
