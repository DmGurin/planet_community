import 'package:flutter/material.dart';
import 'package:planet_community/source/images.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class EarthBody extends StatefulWidget {
  const EarthBody({Key? key}) : super(key: key);

  @override
  _EarthBodyState createState() => _EarthBodyState();
}

class _EarthBodyState extends State<EarthBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'SECTION UNDER DEVELOPMENT',
            style: AppTextStyle.textStyle26w700,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          Image.asset(AppImages.earth),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'WE SORRY',
            style: AppTextStyle.textStyle26w700,
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
                height: 47,
                width: 131,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.lightBlue,
                      AppColors.darkBlue,
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 1,
                      blurRadius: 1,
                      color: AppColors.greyy,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: const Center(
                    child: Text(
                  'CLOSE',
                  style: AppTextStyle.textStyle26w700,
                ))),
          ),
        ],
      ),
    );
  }
}
