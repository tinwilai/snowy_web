import 'package:flutter/material.dart';
// import 'package:scroll_snap_list/scroll_snap_list.dart';

import 'package:snowyweb/global/appbar.dart';
import 'package:snowyweb/global/global.dart' as global;

import 'package:snowyweb/pages/home/top.dart';
import 'package:snowyweb/pages/home/concept.dart';
import 'package:snowyweb/pages/home/schedule.dart';
import 'package:snowyweb/pages/home/rule.dart';
import 'package:snowyweb/pages/home/location.dart';

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
      extendBodyBehindAppBar: true,
      body: ListView(
        physics: const PageScrollPhysics(
          parent: BouncingScrollPhysics(),
        ),
        padding: EdgeInsets.zero,
        children: const [
          Top(),
          Concept(),
          Schedule(),
          Rule(),
          Location(),
        ],
      ),
    );
  }
}
