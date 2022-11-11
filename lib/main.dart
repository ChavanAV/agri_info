import 'package:flutter/material.dart';

import 'Screens/myhomepage.dart';
import 'Splash Screen/splash_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My new App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,

      ),
      home: const SplashScreen(),
    );
  }
}
