import 'package:flutter/material.dart';
import 'package:planet_community/source/images.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class VBody extends StatefulWidget {
  const VBody({Key? key}) : super(key: key);

  @override
  _VBodyState createState() => _VBodyState();
}

class _VBodyState extends State<VBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'data',
            style: AppTextStyle.textStyle69w700,
          ),
          const SizedBox(
            height: 25,
          ),
          Stack(
            children: [
              Container(
                height: 350,
                width: 350,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(AppImages.sunbig)),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
              Positioned(
                  top: 20,
                  left: 10,
                  child: Image.asset(
                    AppImages.diog,
                    color: AppColors.black,
                  )),
              Positioned(
                top: 100,
                left: 10,
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    AppImages.mercury,
                    color: AppColors.black,
                  ),
                ),
              ),
              Positioned(
                  right: 40,
                  top: 120,
                  child: Text(
                    'data',
                    style: AppTextStyle.textStyle69w700
                        .copyWith(color: Colors.black),
                  )),
              Positioned(
                left: 120,
                bottom: 5,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const CircleAvatar(
                    backgroundColor: AppColors.black,
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
