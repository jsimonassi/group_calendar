import 'package:flutter/material.dart';

import 'screens/Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Group Calendar',
      theme: ThemeData(

        primarySwatch: MaterialColor(
          0xffe55f48, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
          const <int, Color>{
            50: const Color(0xff000000),//10%
            100: const Color(0xff000000),//20%
            200: const Color(0xff000000),//30%
            300: const Color(0xff000000),//40%
            400: const Color(0xff000000),//50%
            500: const Color(0xff000000),//60%
            600: const Color(0xff0e0e0e),//70%
            700: const Color(0xff070707),//80%
            800: const Color(0xff170907),//90%
            900: const Color(0xff000000),//100%
          },
        )
      ),
      home: new Login(),
    );
  }
}
