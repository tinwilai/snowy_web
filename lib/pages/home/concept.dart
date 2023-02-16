import 'package:flutter/material.dart';
import 'package:snowyweb/global/global.dart' as global;

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
      height: global.screen.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          global.card(
            child: const Text(
              "戦",
              style: TextStyle(fontSize: 80),
            ),
            margin: EdgeInsets.zero,
          ),
          Container(
            constraints: BoxConstraints(
              maxWidth: global.screen.width * 2 / 5,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Card(
                    margin:
                        const EdgeInsets.only(right: 10, top: 20, bottom: 10),
                    elevation: 5,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: const Text(
                        "Lorem ipsum dolor sit amet",
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Integer enim neque volutpat ac tincidunt vitae semper quis lectus. Non pulvinar neque laoreet suspendisse.",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
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
    );
  }
}
