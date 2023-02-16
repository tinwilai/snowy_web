import 'package:flutter/material.dart';
import 'package:snowyweb/global/global.dart' as global;

class Rule extends StatefulWidget {
  const Rule({super.key});

  @override
  State<Rule> createState() => _RuleState();
}

class _RuleState extends State<Rule> {
  List<String> rules = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: global.screen.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          global.card(
            child: const Text(
              "ルール",
              style: TextStyle(fontSize: 50),
            ),
            elevation: 10,
            margin:
                EdgeInsets.only(left: global.screen.width * 1 / 10, bottom: 20),
          ),
          for (String rule in rules)
            global.card(
              child: Text(
                rule,
                style: const TextStyle(fontSize: 25),
              ),
              margin: EdgeInsets.only(
                left: global.screen.width * 3 / 20,
                bottom: 10,
              ),
              constraints: BoxConstraints(
                maxWidth: global.screen.width * 14 / 20,
              ),
            ),
        ],
      ),
    );
  }
}
