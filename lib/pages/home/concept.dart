import 'package:flutter/material.dart';
import 'package:snowyweb/global/global.dart' as global;
// import 'package:float_column/float_column.dart';

class Concept extends StatefulWidget {
  const Concept({super.key});

  @override
  State<Concept> createState() => _ConceptState();
}

class _ConceptState extends State<Concept> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: global.screen.height - global.appBarHeight,
      child: SizedBox(
        height: global.screen.height - global.appBarHeight,
        width: global.screen.width / 2,
        child: Stack(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Floatable(
            //   float: FCFloat.start,
            //   child:
            // Row(
            //   mainAxisSize: MainAxisSize.min,
            //   children: [
            global.card(
              Text(
                "戦",
                style: TextStyle(fontSize: global.screen.width / 20),
              ),
              margin: EdgeInsets.zero,
            ),
            Card(
              margin: EdgeInsets.zero,
              elevation: 5,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: Container(
                padding: const EdgeInsets.all(25),
                child: Text(
                  "Lorem ipsum dolor sit amet",
                  style: TextStyle(fontSize: global.screen.width / 50),
                ),
              ),
            ),
            //   ],
            // ),
            // ),
            // WrappableText(
            //   text: TextSpan(
            //     text:
            //         'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
            //     style: TextStyle(fontSize: global.screen.width / 45),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
