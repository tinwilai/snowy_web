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
      toolbarHeight: global.appBarHeight,
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      title: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: GestureDetector(
          child: const Text(
            "SNOWY",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Blanka",
              fontSize: 40,
            ),
          ),
          onTap: () => redirect(context, "/"),
        ),
      ),
      actions: <Widget>[
        for (List<String> actionStr in actionStrs)
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Card(
              elevation: 5,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: GestureDetector(
                onTap: () => redirect(context, actionStr[0]),
                child: Container(
                  margin: const EdgeInsets.all(15),
                  child: Text(
                    actionStr[1],
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        const SizedBox(width: 20)
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(global.appBarHeight);
}
