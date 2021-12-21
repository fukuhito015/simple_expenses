import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:simple_flutter_app/utilities/date.dart';

class DailyLabel extends StatelessWidget {
  final DateTime date;
  const DailyLabel({Key? key, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String dateStr = formatter(date);
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
          onPressed: () {},
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
          onPressed: () {},
        )
      ],
    );
  }
}
