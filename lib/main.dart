import 'package:flutter/material.dart';

import 'login_money.dart';
import 'login_tinder.dart';
import 'menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Menu(),
        '/login_money': (context) => LoginMoney(),
        '/tinder': (context) => LoginTinder()
      },
    );
  }
}
