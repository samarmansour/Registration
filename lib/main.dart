import 'package:flutter/material.dart';
import 'package:sign_up/Forget.dart';
import 'package:sign_up/login.dart';
import 'package:sign_up/register.dart';
import 'package:sign_up/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Sign',
      theme:  ThemeData(scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
        fontFamily: "Arial"
      ),
      routes: {
       'login': (context) => Login(),
        'forget':((context) =>Forget() ),
        'register':(context) => Register(),
      },
      home: SplashScreen(),
    );
  }
}