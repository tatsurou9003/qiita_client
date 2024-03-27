import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final _pageWidgets = [
    const PageWidget(color: Colors.amber, title: 'フィード'),
    const PageWidget(color: Colors.blue, title: 'タグ'),
    const PageWidget(color: Colors.orange, title: 'マイページ'),
    const PageWidget(color: Colors.green, title: '設定'),
  ];

  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) => setState(() {
          _currentIndex = index;
        });

    return Scaffold(
      body: _pageWidgets.elementAt(_currentIndex),
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
            indicatorColor: Color.fromARGB(255, 166, 233, 91)),
        child: NavigationBar(
          elevation: 0,
          height: 92,
          backgroundColor: Colors.white,
          onDestinationSelected: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedIndex: _currentIndex,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.format_list_bulleted_outlined),
              label: 'フィード',
            ),
            NavigationDestination(
              icon: Icon(Icons.label_outline),
              label: 'タグ',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outline),
              label: 'マイページ',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings_outlined),
              label: '設定',
            ),
          ],
        ),
      ),
    );
  }
}

class PageWidget extends StatelessWidget {
  final Color color;
  final String title;

  const PageWidget({super.key, required this.color, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
