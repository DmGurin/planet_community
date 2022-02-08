import 'package:flutter/material.dart';
import 'package:planet_community/source/images.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class VenBody extends StatefulWidget {
  const VenBody({Key? key}) : super(key: key);

  @override
  _VenBodyState createState() => _VenBodyState();
}

class _VenBodyState extends State<VenBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'data',
            style: AppTextStyle.textStyle69w700,
          ),
          Container(
            padding: const EdgeInsets.all(25),
            //alignment: Alignment.center,
            height: 150,
            width: 250,
            color: AppColors.darkBlue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'data',
                  style: AppTextStyle.textStyle26w700,
                ),
                Image.asset(
                  AppImages.scale,
                ),
              ],
            ),
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
                color: AppColors.darkGrey,
                child: const Center(
                    child: Text(
                  'data',
                  style: AppTextStyle.textStyle26w700,
                ))),
          ),
        ],
      ),
    );
  }
}
