import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planet_community/screens/earthquake_screen/earthquake_screen.dart';
import 'package:planet_community/screens/temperature_screen/temperature_screen.dart';
import 'package:planet_community/source/images.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class MarsDialogBody extends StatefulWidget {
  const MarsDialogBody({Key? key,
    required this.onTap,
  }) : super(key: key);
  final Function onTap;

  @override
  _MarsDialogBodyState createState() => _MarsDialogBodyState();
}

class _MarsDialogBodyState extends State<MarsDialogBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: MediaQuery.of(context).size.width + 300,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.DialogTop,
                AppColors.black,
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 0.05,
                blurRadius: 0.5,
                offset: Offset(0, 1),
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                    widget.onTap( Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const TemperatureScreen())));
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          SizedBox(
                              width: 100,
                              child: Text(
                                '2 \u00b0',
                                style: AppTextStyle.textStyle14w700,
                              )),
                          Text(
                            '13 \u00b0',
                            style: AppTextStyle.textStyle14w700,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Image.asset(AppImages.scale),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'TEMPERATURE THIS WEEK',
                        style: AppTextStyle.textStyle14w700
                            .copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  width: 1,
                  height: double.infinity,
                  color: AppColors.greyy,
                ),
                const Spacer(),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                    widget.onTap( Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const EarthQuakeScreen())));
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          SizedBox(
                              width: 100,
                              child: Text(
                                '8.1 \u00b0',
                                style: AppTextStyle.textStyle14w700,
                              )),
                          Text(
                            '3.4 \u00b0',
                            style: AppTextStyle.textStyle14w700,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width - 275,
                          child: Image.asset(AppImages.diog)),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'EARTHQUAKE THIS WEEK',
                        style: AppTextStyle.textStyle14w700
                            .copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
  //void marsDialog (BuildContext context,  Function onTap){}
}
