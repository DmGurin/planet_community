import 'package:flutter/material.dart';
import 'package:planet_community/style/app_text_styles.dart';

class AskBody extends StatefulWidget {
  const AskBody({Key? key}) : super(key: key);

  @override
  _AskBodyState createState() => _AskBodyState();
}

class _AskBodyState extends State<AskBody> {
  String? selectedValue = 'Выключено';

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Хотели бы вы узнать о других планетах?',
            style: AppTextStyle.textStyle26w700,
          ),
          RadioListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 0),
            activeColor: Colors.blue,
            title: const Text(
              'НЕ ЗНАЮ',
              style: AppTextStyle.textStyle26w700,
            ),
            onChanged: (value) {
              setState(() {
                selectedValue = value! as String?;
              });
            },
            value: 'НЕ ЗНАЮ',
            groupValue: selectedValue,
          ),
          RadioListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 0),
            activeColor: Colors.blue,
            title: const Text(
              'МОЖЕТ БЫТЬ',
              style: AppTextStyle.textStyle26w700,
            ),
            onChanged: (value) {
              setState(() {
                selectedValue = value! as String?;
              });
            },
            value: 'МОЖЕТ БЫТЬ',
            groupValue: selectedValue,
          ),
          RadioListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 0),
            activeColor: Colors.blue,
            title: const Text(
              'ЭТО АНТИНАУЧНО!',
              style: AppTextStyle.textStyle26w700,
            ),
            onChanged: (value) {
              setState(() {
                selectedValue = value! as String?;
              });
            },
            value: 'ЭТО АНТИНАУЧНО!',
            groupValue: selectedValue,
          ),
          RadioListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 0),
            activeColor: Colors.blue,
            title: const Text(
              'КОНЕЧНО ДА!',
              style: AppTextStyle.textStyle26w700,
            ),
            onChanged: (value) {
              setState(() {
                selectedValue = value! as String?;
              });
            },
            value: 'КОНЕЧНО ДА!',
            groupValue: selectedValue,
          ),
          const SizedBox(
            height: 24,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Оk',
                style: AppTextStyle.textStyle26w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
