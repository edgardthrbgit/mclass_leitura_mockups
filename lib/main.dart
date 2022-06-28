import 'package:flutter/material.dart';

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

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menu - Leitura de Mockups'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login_money');
                },
                child: Text("LOGIN MONEY"),
              ),
              SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/tinder');
                },
                child: Text("LOGIN TINDER"),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class LoginMoney extends StatelessWidget {
  const LoginMoney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class LoginTinder extends StatelessWidget {
  const LoginTinder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
