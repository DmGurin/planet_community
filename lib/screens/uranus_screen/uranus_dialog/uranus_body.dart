import 'package:flutter/material.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class UranusBody extends StatefulWidget {
  const UranusBody({Key? key}) : super(key: key);

  @override
  _UranusBodyState createState() => _UranusBodyState();
}

class _UranusBodyState extends State<UranusBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          const Text('data', style: AppTextStyle.textStyle69w700,),
          const SizedBox(
            height: 80,
          ),
          const Text('data', style: AppTextStyle.textStyle69w700,),
          const SizedBox(
            height: 80,
          ),
          const Text('data',style: AppTextStyle.textStyle69w700,),
          const SizedBox(
            height: 80,
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              height: 47,
              width: 131,
              color: AppColors.lightBlue,
              child:
              const Center(child: Text('data', style: AppTextStyle.textStyle26w700,)),
            ),
          ),
        ],
      ),
    );
  }
}
