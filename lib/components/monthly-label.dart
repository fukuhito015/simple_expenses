import 'package:flutter/material.dart';
import 'package:simple_flutter_app/utilities/date.dart';

class MonthlyLabel extends StatelessWidget {
  final DateTime date;
  final Function? onChangePage;
  const MonthlyLabel({Key? key, required this.date, this.onChangePage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String dateStr = DateUtil.formatter(date, 'yyyy年MM月');
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(
            Icons.navigate_before,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {
            onChangePage!(-1);
          },
        ),
        Text(
          dateStr,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          icon: const Icon(
            Icons.navigate_next,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {
            onChangePage!(1);
          },
        )
      ],
    );
  }
}
