import 'package:flutter/material.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';


class VenusBody extends StatefulWidget {
  const VenusBody({Key? key}) : super(key: key);

  @override
  _VenusBodyState createState() => _VenusBodyState();
}

class _VenusBodyState extends State<VenusBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'data',
            style: AppTextStyle.textStyle69w700,
          ),
          const SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
                height: 50,
                width: 140,
                color: AppColors.greyy,
                child: const Center(
                  child: Text(
                    'data',
                    style: AppTextStyle.textStyle26w700,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
