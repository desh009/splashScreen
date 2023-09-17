import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:hjhhuwudh/Home.dart';
import 'package:hjhhuwudh/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: AnimatedSplashScreen(
          splash: Icons.apple,
          duration: 3000,
          splashTransition: SplashTransition.scaleTransition,
          backgroundColor: Colors.blue,
          nextScreen: MyLogin()),
      routes: {
        'register': (context) => MyRegister(),
        'login': (context) => MyLogin(),
      },
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.blue,
      //       ),
      //       Container(
      //         child: Text(
      //           'Splash Screen',
      //           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
