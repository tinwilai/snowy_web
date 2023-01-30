import 'package:flutter/material.dart';
import 'package:snowyweb/global/appbar.dart';
import 'package:snowyweb/global/global.dart' as global;

import 'package:snowyweb/pages/home/top.dart';
import 'package:snowyweb/pages/home/concept.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      global.screen = MediaQuery.of(context).size;
    });
    return Scaffold(
      appBar: MainAppbar(),
      body: ListView(
        shrinkWrap: false,
        physics: const BouncingScrollPhysics(),
        children: const [Top(), Concept()],
      ),
    );
  }
}
