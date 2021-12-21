import 'package:flutter/material.dart';
import '../components/expense-button.dart';
import '../components/expense-gridview.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemBuilder: (context, index) {
          DateTime date = DateTime.now().add(Duration(days: -1000 + index));
          return ExpenseGridView(
            list: expenseList,
            date: date,
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
