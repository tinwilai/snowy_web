import 'package:go_router/go_router.dart';
import "package:snowyweb/pages/home.dart";
// import "package:snowyweb/pages/login.dart";
import 'package:flutter/material.dart';
// import 'package:snowyweb/global/cosmos.dart';

String lang = 'en';

Size screen = const Size(0, 0);
double appBarHeight = 80;
// Cosmos? cosmos;

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Home(),
    ),
    // GoRoute(
    //   path: '/login',
    //   builder: (context, state) => const Login(),
    // ),
  ],
);

Widget card(
  Widget child, {
  EdgeInsets padding = const EdgeInsets.all(25),
  EdgeInsets margin = const EdgeInsets.all(15),
  Color? color,
  Color? shadowColor,
  double? width,
  double elevation = 5,
  BoxConstraints? constraints,
}) {
  return Card(
    margin: margin,
    elevation: elevation,
    color: color,
    shadowColor: shadowColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Container(
      constraints: constraints,
      decoration: constraints != null ? const BoxDecoration() : null,
      width: width,
      padding: padding,
      child: child,
    ),
  );
}

Widget buttoncard(String text,
    {EdgeInsets padding = const EdgeInsets.all(15),
    EdgeInsets margin = const EdgeInsets.all(15)}) {
  return Card(
    color: Colors.blue,
    margin: margin,
    elevation: 5,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25),
    ),
    child: Container(
      padding: padding,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    ),
  );
}

InputDecoration decoration(String text, IconData icon, {String? passHelp}) {
  return InputDecoration(
    icon: Icon(icon),
    fillColor: Colors.grey[250],
    filled: true,
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(25)),
      borderSide: BorderSide.none,
    ),
    labelText: text,
    helperText: passHelp,
  );
}
