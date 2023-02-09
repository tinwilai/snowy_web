import 'dart:ui';

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
// import 'package:flutter_nord_theme/flutter_nord_theme.dart';

import 'package:snowyweb/global/global.dart' as global;

void main() {
  usePathUrlStrategy();
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Snowy | Nagaoka Snow Sculpture Contest',
      // themeMode: ThemeMode.light,
      // theme: NordTheme.light(),
      // darkTheme: NordTheme.dark(),
      routerConfig: global.router,
      debugShowCheckedModeBanner: false,
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.stylus,
          PointerDeviceKind.touch,
          PointerDeviceKind.unknown,
        },
      ),
    );
  }
}
