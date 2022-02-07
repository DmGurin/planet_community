import 'package:flutter/material.dart';
import 'package:planet_community/source/images.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';


class UBody extends StatefulWidget {
  const UBody({Key? key}) : super(key: key);

  @override
  _UBodyState createState() => _UBodyState();
}

class _UBodyState extends State<UBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(AppImages.sun),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                  height: 220,
                  child: Image.asset(
                    AppImages.temperature,
                    color: AppColors.white,
                  )),
              const Spacer(),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                    height: 50,
                    width: 150,
                    color: AppColors.darkGrey,
                    child: const Center(
                        child: Text(
                          'data',
                          style: AppTextStyle.textStyle26w700,
                        ))),
              )
            ],
          ),
        ],
      ),
    );
  }
}
