import 'package:flutter/material.dart';
import 'package:snowyweb/global/global.dart' as global;

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: global.screen.height - global.appBarHeight,
    );
  }
}
