import 'package:flutter/material.dart';
import 'expense-button.dart';

class DailyExpenseGridView extends StatelessWidget {
  final List<ExpenseElevatedButton> list;
  final SliverAppBar sliverAppBar;
  const DailyExpenseGridView(
      {Key? key, required this.list, required this.sliverAppBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        sliverAppBar,
        SliverList(
          delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        '（支出合計）',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              '30,000',
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Text(
                            '円',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: SliverGrid.count(
            crossAxisCount: 1,
            children: list,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            childAspectRatio: 3.5,
          ),
        ),
      ],
    );
  }
}
