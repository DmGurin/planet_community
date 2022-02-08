import 'package:flutter/material.dart';
import 'package:planet_community/source/images.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';


class VeBody extends StatefulWidget {
  const VeBody({Key? key}) : super(key: key);

  @override
  _VeBodyState createState() => _VeBodyState();
}

class _VeBodyState extends State<VeBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
              child: Text(
                'data',
                style: AppTextStyle.textStyle69w700,
                textAlign: TextAlign.left,
              )),
          const SizedBox(
            height: 45,
          ),
          const Text(
            'CLICK HERE TO CLOSE',
            style: AppTextStyle.textStyle26w700,
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Stack(
              children: [
                SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset(AppImages.sun),
                ),
                Positioned(
                  top: 25,
                  left: 10,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const CircleAvatar(
                      radius: 14,
                      child: Icon(
                        Icons.close,
                        color: AppColors.lightBlue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
