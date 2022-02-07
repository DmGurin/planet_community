import 'package:flutter/material.dart';
import 'package:planet_community/source/images.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class SunProfileScreen extends StatefulWidget {
  const SunProfileScreen({Key? key}) : super(key: key);

  @override
  _SunProfileScreenState createState() => _SunProfileScreenState();
}

class _SunProfileScreenState extends State<SunProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                height: 5,
              ),
              const Text(
                'data',
                style: AppTextStyle.textStyle96w700,
              ),
              const Text(
                'data',
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
                  borderRadius: const BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
                child: const Center(
                    child: Text(
                  '360 VIEW',
                  style: AppTextStyle.textStyle18w700,
                  textAlign: TextAlign.center,
                )),
              ),
              const Spacer(),
              Image.asset(AppImages.sunbig),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
