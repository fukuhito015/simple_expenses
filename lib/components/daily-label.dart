import 'package:flutter/material.dart';
import 'package:simple_flutter_app/utilities/date.dart';

class DailyLabel extends StatelessWidget {
  final DateTime date;
  const DailyLabel({Key? key, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String dateStr = formatter(date, 'yyyy年MM月dd日（EEEE）');
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text(
          "＜",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        Text(
          dateStr,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          "＞",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
