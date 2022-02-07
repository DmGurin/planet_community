import 'package:flutter/material.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class UrBody extends StatefulWidget {
  const UrBody({Key? key}) : super(key: key);

  @override
  _UrBodyState createState() => _UrBodyState();
}

class _UrBodyState extends State<UrBody> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            'data',
            style: AppTextStyle.textStyle69w700,
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
                height: 45,
                width: 135,
                color: AppColors.darkBlue,
                child: const Center(
                    child: Text(
                      'data',
                      style: AppTextStyle.textStyle26w700,
                    ))),
          )
        ],
      ),
    );
  }
}
