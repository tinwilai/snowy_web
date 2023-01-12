import 'package:flutter/material.dart';
import 'package:flutter_nord_theme/flutter_nord_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snowy | A Snow Event',
      themeMode: ThemeMode.light,
      theme: NordTheme.light(),
      darkTheme: NordTheme.dark(),
      home: const HomePage(title: 'Snowy'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool extended = true;
  List<List<String>> actionStrs = [
    ["page1", "Page 1"],
    ["page2", "Page 2"],
    ["page3", "Page 3"],
  ];

  void redirect(String route) {
    print(route);
  }

  void toggleNavRailExtend(bool focus) {
    setState(() {
      extended = focus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.ac_unit),
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          for (List<String> actionStr in actionStrs)
            TextButton(
              onPressed: () => redirect(actionStr[0]),
              child: Text(
                actionStr[1],
                // style: const TextStyle(
                //   color: Colors.white,
                // ),
              ),
            ),
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 40,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text("Placeholder"),
                ),
                Container(
                  height: 40,
                  width: double.infinity,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
