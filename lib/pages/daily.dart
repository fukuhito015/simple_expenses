import 'package:flutter/material.dart';
import 'package:simple_flutter_app/components/daily-label.dart';
import 'package:simple_flutter_app/utilities/date.dart';
import '../components/expense-button.dart';
import '../components/daily-expense-gridview.dart';

class DailyPage extends StatefulWidget {
  const DailyPage({
    Key? key,
  }) : super(key: key);
  @override
  State<DailyPage> createState() => _DailyPageState();
}

class _DailyPageState extends State<DailyPage> {
  @override
  Widget build(BuildContext context) {
    List<ExpenseElevatedButton> expenseList = [
      const ExpenseElevatedButton(
        name: '食費',
        color: Colors.green,
        budgetPrice: 200000,
        expensePrice: 10000,
      ),
      const ExpenseElevatedButton(
        name: '交際費',
        color: Colors.amber,
        budgetPrice: 300000,
        expensePrice: 10000,
      ),
      const ExpenseElevatedButton(
        name: 'その他生活費',
        color: Colors.pink,
        budgetPrice: 400000,
        expensePrice: 10000,
      ),
      const ExpenseElevatedButton(
        name: '固定費',
        color: Colors.grey,
        budgetPrice: 500000,
        expensePrice: 20000,
      ),
    ];
    PageController _pageController = PageController(initialPage: 1000);

    Function? onChangePage(int index) {
      if (index > 0) {
        _pageController.nextPage(
          duration: const Duration(milliseconds: 250),
          curve: Curves.ease,
        );
      } else {
        _pageController.previousPage(
          duration: const Duration(milliseconds: 250),
          curve: Curves.ease,
        );
      }
    }

    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemBuilder: (context, index) {
          DateTime date = DateUtil.addDays(DateTime.now(), index - 1000);
          return DailyExpenseGridView(
              list: expenseList,
              sliverAppBar: SliverAppBar(
                floating: true,
                pinned: true,
                snap: false,
                flexibleSpace: FlexibleSpaceBar(
                  title: DailyLabel(date: date, onChangePage: onChangePage),
                ),
              ));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.home),
      ),
    );
  }
}
