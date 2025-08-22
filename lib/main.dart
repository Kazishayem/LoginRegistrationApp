import 'package:flutter/material.dart';
import 'package:loginregistration/LoginRegistration.dart';
import 'package:loginregistration/login.dart';
// import 'package:loginregistration/test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: LoginRegistration(),
      //home: login(),
      initialRoute: '/registration',
      routes: {
        '/registration': (context) => LoginRegistration(),
        '/login': (context) => login(),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (_) =>
            Scaffold(body: Center(child: Text("404-Page not found"))),
      ),

      // home: test(),
    );
  }
}
