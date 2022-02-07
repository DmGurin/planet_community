import 'package:flutter/material.dart';
import 'package:planet_community/source/images.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class ViewBody extends StatefulWidget {
  const ViewBody({Key? key}) : super(key: key);

  @override
  _ViewBodyState createState() => _ViewBodyState();
}

class _ViewBodyState extends State<ViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('А ВОТ ФИГУШКИ!',style: AppTextStyle.textStyle26w700,),
          Image.asset(AppImages.figa,),
          const Text('Я ТОЛЬКО УЧУСЬ',style: AppTextStyle.textStyle26w700,),
          const SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Center(
              child: Container(
                height: 40,
                width: 260,
                margin: const EdgeInsets.all(2),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.darkBlue,
                      AppColors.darkGrey,
                    ],
                  ),
                  border: Border.all(width: 2, color: AppColors.greyy),
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                ),
                child: const Text(
                  'ОТНЕСЬТИСЬ С ПОНИМАНИЕМ',
                  style: AppTextStyle.textStyle26w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
