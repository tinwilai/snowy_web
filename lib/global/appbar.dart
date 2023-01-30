import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snowyweb/global/global.dart' as global;

class MainAppbar extends StatelessWidget with PreferredSizeWidget {
  MainAppbar({super.key});

  final List<List<String>> actionStrs = [
    ["/access", "Access"],
    ["/about_us", "About us"],
  ];

  void redirect(BuildContext context, String route) {
    context.go(route);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 5,
      title: const Text(
        "Snowy Logo",
        style: TextStyle(color: Colors.black),
      ),
      actions: <Widget>[
        for (List<String> actionStr in actionStrs)
          TextButton(
            onPressed: () => redirect(context, actionStr[0]),
            child: Text(
              actionStr[1],
              // style: const TextStyle(
              //   color: Colors.white,
              // ),
            ),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(global.appBarHeight);
}
