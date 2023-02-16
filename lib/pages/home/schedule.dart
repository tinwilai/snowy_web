import 'package:flutter/material.dart';
import 'package:snowyweb/global/global.dart' as global;

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  final ScrollController _controller = ScrollController();
  double _sliderValue = 0;
  bool changing = false;
  List<Widget> children = [
    for (int i = 0; i < 5; i++)
      SizedBox(
        height: global.screen.height * 2 / 5,
        child: const Center(
            child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Faucibus scelerisque eleifend donec pretium. Amet porttitor eget dolor morbi non arcu risus quis. Nisl pretium fusce id velit ut tortor pretium. Fermentum iaculis eu non diam phasellus vestibulum.")),
      ),
  ];

  List<Widget> titles = [for (int i = 0; i < 5; i++) Text("data")];

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      if (!changing) {
        setState(() {
          _sliderValue = _controller.offset /
              _controller.position.maxScrollExtent *
              children.length;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: global.screen.height,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: global.screen.height * 3 / 5,
              width: global.screen.width * 1 / 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RotatedBox(
                    quarterTurns: 1,
                    child: SliderTheme(
                      data: SliderThemeData(
                        overlayShape: SliderComponentShape.noOverlay,
                        thumbShape: _CustomThumbShape(),
                        tickMarkShape: _CustomTickShape(),
                        trackShape: _CustomTrackShape(),
                        activeTrackColor: Colors.black,
                        inactiveTrackColor: Colors.grey,
                      ),
                      child: Slider(
                        value:
                            _sliderValue.clamp(0, children.length.toDouble()),
                        min: 0,
                        max: children.length.toDouble(),
                        // divisions: children.length,
                        onChanged: (value) {
                          setState(() {
                            _sliderValue = value;
                            _controller.jumpTo(value /
                                children.length *
                                _controller.position.maxScrollExtent);
                          });
                        },
                        onChangeStart: (_) => setState(() => changing = true),
                        onChangeEnd: (_) => setState(() => changing = false),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int i = 0; i < titles.length; i++)
                        const Text(
                          'data',
                          style: TextStyle(fontSize: 20),
                        )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: global.screen.width * 1 / 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: global.screen.height * 2 / 5,
                  width: global.screen.width * 2 / 5,
                  child: ScrollConfiguration(
                    behavior: ScrollConfiguration.of(context)
                        .copyWith(scrollbars: false),
                    child: ListView(
                      controller: _controller,
                      physics: const PageScrollPhysics(
                        parent: BouncingScrollPhysics(),
                      ),
                      padding: EdgeInsets.zero,
                      children: children,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: global.screen.width * 1 / 10),
          ],
        ),
      ),
      // Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     row(
      //       date: "2/17 まで",
      //       text: "募集期間",
      //       left: true,
      //     ),
      //   ],
      // ),
    );
  }
}

class _CustomTrackShape extends RoundedRectSliderTrackShape {
  double off = 18;

  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight;
    final trackLeft = offset.dx + off / 2;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final trackWidth = parentBox.size.width - off;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}

class _CustomThumbShape extends SliderComponentShape {
  final double thumbRadius = 20;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    Animation<double>? activationAnimation,
    Animation<double>? enableAnimation,
    bool? isDiscrete,
    TextPainter? labelPainter,
    RenderBox? parentBox,
    SliderThemeData? sliderTheme,
    TextDirection? textDirection,
    double? value,
    double? textScaleFactor,
    Size? sizeWithOverflow,
  }) {
    final canvas = context.canvas;

    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(
      Offset(center.dx, center.dy - thumbRadius),
      Offset(center.dx, center.dy + thumbRadius),
      paint,
    );
  }
}

class _CustomTickShape extends SliderTickMarkShape {
  final double thumbRadius = 20;

  @override
  Size getPreferredSize(
      {required SliderThemeData sliderTheme, required bool isEnabled}) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> enableAnimation,
    required bool isEnabled,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required Offset thumbCenter,
  }) {
    final canvas = context.canvas;

    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(
      Offset(center.dx, center.dy - thumbRadius),
      Offset(center.dx, center.dy + thumbRadius),
      paint,
    );
  }
}

Widget row({
  required String date,
  required String text,
  required bool left,
}) {
  return Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: left ? MainAxisAlignment.start : MainAxisAlignment.end,
    children: [
      Card(
        clipBehavior: Clip.hardEdge,
        elevation: 10,
        margin: EdgeInsets.symmetric(
          vertical: left ? 15 : 0,
          horizontal: left ? 0 : 15,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 30,
                right: 20,
              ),
              width: global.screen.width * 3 / 10,
              child: Text(
                date,
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.end,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 20,
                right: 30,
                top: 20,
                bottom: 20,
              ),
              color: Colors.lightBlue[400],
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
