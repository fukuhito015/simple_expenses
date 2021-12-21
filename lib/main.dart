import 'package:flutter/material.dart';
import 'package:simple_flutter_app/pages/home.dart';
// import 'components/expense-button.dart';
// import 'components/expense-gridview.dart';
// import 'pages/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetList = [
      const MyHomePage(),
      const Text('2'),
      const Text('3'),
    ];

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('ざくっと支出管理'),
      //   elevation: 0,
      // ),
      body: Center(
        child: _widgetList.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_view_month_outlined), label: 'カレンダー'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '設定'),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        // selectedFontSize: 13.0,
        // selectedItemColor: Colors.white,
        // unselectedFontSize: 10.0,
        // unselectedItemColor: Colors.grey,
        // backgroundColor: Colors.black,
        // type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
