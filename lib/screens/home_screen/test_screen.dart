import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planet_community/source/images.dart';
import 'package:planet_community/source/svg.dart';
import 'package:planet_community/source/widget/ask_dialog/ask_dialog.dart';
import 'package:planet_community/source/widget/show_dialog.dart';
import 'package:planet_community/source/widget/view_dialog/view_dialog.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: AlignmentDirectional.bottomCenter,
          colors: [
            AppColors.darkBlue,
            AppColors.darkGrey,
          ],
        )),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 25,
            ),
            ListTile(
              title: const Center(
                child: Text(
                  'EARTH',
                  style: AppTextStyle.textStyle96w700,
                ),
              ),
              onTap: () {
                showAskDialog(context);
              },
            ),
            const Text(
              'THE LIVING PLANET',
              style: AppTextStyle.textStyle14w700,
            ),
            ListTile(
              onTap: (){
                showViewDialog(context);
              },
              title: Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 23),
                  height: 39,
                  width: 40,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.9, color: AppColors.white),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                  child: const Center(
                    child: (Text(
                      '360 VIEW',
                      style: AppTextStyle.textStyle18w700,
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Stack(
              children: [
                Image.asset(
                  AppImages.bigearth,
                ),
                Positioned(
                  top: 220,
                  left: 95,
                  child: GestureDetector(
                    onTap: () {
                      showCustomDialog(
                        context,
                        () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ShowItemDialog(
                              onTap: () {},
                            ),
                          ));
                        },
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top: 9),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(
                                  0, 1), // changes position of shadow
                            ),
                          ],
                          color: AppColors.botBlue,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100))),
                      child: Center(
                        child: SvgPicture.asset(
                          AppSvg.plus,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
