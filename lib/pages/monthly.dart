import 'package:flutter/material.dart';
import 'package:simple_flutter_app/components/monthly-exponse-gridview.dart';
import 'package:simple_flutter_app/components/monthly-label.dart';
import 'package:simple_flutter_app/utilities/date.dart';
import '../components/expense-button.dart';

class MonthlyPage extends StatefulWidget {
  const MonthlyPage({
    Key? key,
  }) : super(key: key);
  @override
  State<MonthlyPage> createState() => _MonthlyPageState();
}

class _MonthlyPageState extends State<MonthlyPage> {
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
          DateTime date = DateUtil.addMonths(DateTime.now(), index - 1000);
          return MonthlyExpenseGridView(
            list: expenseList,
            sliverAppBar: SliverAppBar(
              floating: true,
              pinned: true,
              snap: false,
              flexibleSpace: FlexibleSpaceBar(
                title: MonthlyLabel(date: date, onChangePage: onChangePage),
              ),
            ),
          );
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
