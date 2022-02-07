import 'package:flutter/material.dart';
import 'package:planet_community/source/images.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class VenusProfileScreen extends StatefulWidget {
  const VenusProfileScreen({Key? key}) : super(key: key);

  @override
  _VenusProfileScreenState createState() => _VenusProfileScreenState();
}

class _VenusProfileScreenState extends State<VenusProfileScreen> {
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
          children: <Widget>[
            const SizedBox(
              height: 25,
            ),
            const Text(
              'VENUS',
              style: AppTextStyle.textStyle96w700,
            ),
            const Text(
              'GOLWING PLANET',
              style: AppTextStyle.textStyle14w700,
            ),
            Container(
              margin: const EdgeInsets.only(top: 23),
              height: 39,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(100)),
                border: Border.all(
                  width: 0.9,
                  color: AppColors.white,
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
            Image.asset(
              AppImages.bigvenus,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
