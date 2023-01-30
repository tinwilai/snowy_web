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
                  Text(
                    "長岡雪像コンテスト",
                    style: TextStyle(
                      fontSize: global.screen.width / 25,
                      height: 0.98,
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
                            padding: EdgeInsets.only(
                              top: global.screen.width / 60,
                              right: global.screen.width / 60,
                              left: global.screen.width / 100,
                              bottom: global.screen.width / 100,
                            ),
                            child: Transform.rotate(
                              angle: dateRot,
                              child: Row(
                                children: [
                                  Transform.rotate(
                                    angle: -dateRot,
                                    child: Text(
                                      "18",
                                      style: TextStyle(
                                        fontSize: global.screen.width / 35,
                                      ),
                                    ),
                                  ),
                                  Transform.rotate(
                                    angle: -dateRot,
                                    child: Text(
                                      "/",
                                      style: TextStyle(
                                        fontSize: global.screen.width / 35,
                                      ),
                                    ),
                                  ),
                                  Transform.rotate(
                                    angle: -dateRot,
                                    child: Text(
                                      "2",
                                      style: TextStyle(
                                        fontSize: global.screen.width / 35,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(global.screen.width / 180),
                            padding: EdgeInsets.all(global.screen.width / 200),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 70, 172, 255),
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              "土",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: global.screen.width / 90,
                                height: 1,
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Icon(
                          Icons.play_arrow_rounded,
                          size: global.screen.width / 35,
                        ),
                      ),
                      Stack(
                        alignment: AlignmentDirectional.topEnd,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: global.screen.width / 60,
                              right: global.screen.width / 60,
                              left: global.screen.width / 100,
                              bottom: global.screen.width / 100,
                            ),
                            child: Transform.rotate(
                              angle: dateRot,
                              child: Row(
                                children: [
                                  Transform.rotate(
                                    angle: -dateRot,
                                    child: Text(
                                      "19",
                                      style: TextStyle(
                                        fontSize: global.screen.width / 35,
                                      ),
                                    ),
                                  ),
                                  Transform.rotate(
                                    angle: -dateRot,
                                    child: Text(
                                      "/",
                                      style: TextStyle(
                                        fontSize: global.screen.width / 35,
                                      ),
                                    ),
                                  ),
                                  Transform.rotate(
                                    angle: -dateRot,
                                    child: Text(
                                      "2",
                                      style: TextStyle(
                                        fontSize: global.screen.width / 35,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(global.screen.width / 180),
                            padding: EdgeInsets.all(global.screen.width / 200),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 105, 94),
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              "日",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: global.screen.width / 90,
                                height: 1,
                              ),
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
