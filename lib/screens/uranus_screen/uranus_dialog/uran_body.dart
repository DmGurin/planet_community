import 'package:flutter/material.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class UranBody extends StatefulWidget {
  const UranBody({Key? key}) : super(key: key);

  @override
  _UranBodyState createState() => _UranBodyState();
}

class _UranBodyState extends State<UranBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'data',
            style: AppTextStyle.textStyle96w700,
          ),
          const SizedBox(
            height: 50,
          ),
          ClipOval(
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                  height: 150,
                  width: 150,
                  color: AppColors.botBlue,
                  child: const Center(
                      child: Text(
                        'data',
                        style: AppTextStyle.textStyle26w700,
                      ))),
            ),
          ),
        ],
      ),
    );
  }
}
