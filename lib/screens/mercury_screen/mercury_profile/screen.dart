import 'package:flutter/material.dart';
import 'package:planet_community/source/images.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class MercuryProfileScreen extends StatefulWidget {
  const MercuryProfileScreen({Key? key}) : super(key: key);

  @override
  _MercuryProfileScreenState createState() => _MercuryProfileScreenState();
}

class _MercuryProfileScreenState extends State<MercuryProfileScreen> {
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
                height: 25,
              ),
              const Text('data', style: AppTextStyle.textStyle96w700,),
              const Text('data', style: AppTextStyle.textStyle14w700,),
              Container(
                margin: EdgeInsets.only(top: 23,),
                  height: 39,
                  width: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.9,
                      color: AppColors.white,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                  child: Center(child: const Text('data', style: AppTextStyle.textStyle18w700, textAlign: TextAlign.center,))),
              const Spacer(),
              Image.asset(AppImages.mercurybig),
              const Spacer(),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: const [
              //         Text('data'),
              //         Text('data'),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         Text('data'),
              //         Text('data'),
              //       ],
              //     ),
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: const [
              //         Text('data'),
              //         Text('data'),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         Text('data'),
              //         Text('data'),
              //       ],
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
