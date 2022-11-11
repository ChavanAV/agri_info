import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Screens/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    _NavigateToHome();
  }

  _NavigateToHome() async{
    await Future.delayed(
        Duration(milliseconds: 30),

            (){}
    );
    Navigator.pushReplacement(
      context,MaterialPageRoute(builder: (context)=>LoginPage()),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
    );
  }
}
