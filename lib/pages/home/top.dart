import 'package:flutter/material.dart';
import 'package:snowyweb/global/global.dart' as global;

class Top extends StatefulWidget {
  const Top({super.key});

  @override
  State<Top> createState() => _TopState();
}

class _TopState extends State<Top> {
  double dateRot = 10;

  @override
  Widget build(BuildContext context) {
    TextStyle dowStyle = const TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontSize: 16,
      height: 1,
    );
    TextStyle dateStyle = const TextStyle(fontSize: 40);
    EdgeInsets datePad =
        const EdgeInsets.only(top: 25, right: 25, left: 15, bottom: 15);
    return SizedBox(
      height: global.screen.height - global.appBarHeight,
      child: Stack(
        children: [
          Row(
            children: [
              SizedBox(
                width: global.screen.width * 2 / 5,
                height: global.screen.height - global.appBarHeight,
              ),
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: global.screen.width / 2,
                    padding: EdgeInsets.zero,
                    margin: EdgeInsets.zero,
                    child: Image.asset("images/home_1.png", fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: global.screen.width * 2 / 3,
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                global.card(
                  const Text(
                    "長岡雪像コンテスト",
                    style: TextStyle(
                      fontSize: 55,
                      height: 0.99,
                    ),
                  ),
                ),
                global.card(
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.topEnd,
                        children: [
                          Padding(
                            padding: datePad,
                            child: Transform.rotate(
                              angle: dateRot,
                              child: Row(
                                children: [
                                  Transform.rotate(
                                    angle: -dateRot,
                                    child: Text(
                                      "18",
                                      style: dateStyle,
                                    ),
                                  ),
                                  Transform.rotate(
                                    angle: -dateRot,
                                    child: Text(
                                      "/",
                                      style: dateStyle,
                                    ),
                                  ),
                                  Transform.rotate(
                                    angle: -dateRot,
                                    child: Text(
                                      "2",
                                      style: dateStyle,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 70, 172, 255),
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              "土",
                              style: dowStyle,
                            ),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(5),
                        child: Icon(
                          Icons.play_arrow_rounded,
                          size: 40,
                        ),
                      ),
                      Stack(
                        alignment: AlignmentDirectional.topEnd,
                        children: [
                          Padding(
                            padding: datePad,
                            child: Transform.rotate(
                              angle: dateRot,
                              child: Row(
                                children: [
                                  Transform.rotate(
                                    angle: -dateRot,
                                    child: Text(
                                      "19",
                                      style: dateStyle,
                                    ),
                                  ),
                                  Transform.rotate(
                                    angle: -dateRot,
                                    child: Text(
                                      "/",
                                      style: dateStyle,
                                    ),
                                  ),
                                  Transform.rotate(
                                    angle: -dateRot,
                                    child: Text(
                                      "2",
                                      style: dateStyle,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 105, 94),
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              "日",
                              style: dowStyle,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  margin: EdgeInsets.zero,
                  padding: const EdgeInsets.all(5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
