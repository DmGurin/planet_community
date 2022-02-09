import 'package:flutter/material.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class UraBody extends StatefulWidget {
  const UraBody({Key? key}) : super(key: key);

  @override
  _UraBodyState createState() => _UraBodyState();
}

class _UraBodyState extends State<UraBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        verticalDirection: VerticalDirection.down,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'data',
                style: AppTextStyle.textStyle69w700,
              ),
              Text(
                'data',
                style: AppTextStyle.textStyle69w700,
              ),
            ],
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
                height: 57,
                width: 131,
                color: AppColors.darkBlue,
                child: const Center(
                  child: Text(
                    'data',
                    style: AppTextStyle.textStyle69w700,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
