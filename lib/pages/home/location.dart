import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:ui' as ui;
import 'package:snowyweb/global/global.dart' as global;

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  late String _url;
  late IFrameElement _iframeElement;

  @override
  initState() {
    super.initState();
    _url =
        'https://www.google.com/maps/embed/v1/place?q=place_id:ChIJ0ymHCpqp9V8RicRofxynjjA&key=AIzaSyAYFl57fNnzPujBBUdqOByok_9IR3bTrFA';
    _iframeElement = IFrameElement()
      ..src = _url
      ..id = 'iframe'
      ..style.border = 'none';
    //ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'iframeElement',
      (int viewId) => _iframeElement,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: global.screen.height - global.appBarHeight,
      child: SizedBox(
        width: global.screen.width * 3 / 4,
        height: global.screen.height * 3 / 4,
        child: const HtmlElementView(
          viewType: 'iframeElement',
        ),
      ),
    );
  }
}
