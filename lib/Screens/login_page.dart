import 'dart:ffi';

import 'package:agri_info/Screens/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'myhomepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

bool _isVisible = false;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.greenAccent.withOpacity(1),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration:const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0x660ac18e),
                  Color(0x9950ac18e),
                  Color(0xcc5ac18e),
                  Color(0xff6ac18e),
                ],
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Login Here",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 32),
                  ),
                  Container(
                    margin:const EdgeInsets.fromLTRB(30, 50, 30, 0),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        fillColor: Colors.tealAccent,
                        labelText: "user name",
                        // helperText:"Enter user name" ,
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 7,
                                style: BorderStyle.solid,
                                color: Colors.red),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      cursorColor: Colors.black,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(30, 50, 30, 0),
                    child: Form(
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: const TextInputType.numberWithOptions(
                                signed: true, decimal: false),
                            // validator:
                            decoration: InputDecoration(
                              errorStyle: const TextStyle(color: Colors.red),
                              fillColor: Colors.white,
                              suffixIconColor: Colors.black38,
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _isVisible = !_isVisible;
                                  });
                                },
                                icon: _isVisible
                                    ? const Icon(Icons.visibility)
                                    : const Icon(Icons.visibility_off),
                              ),
                              labelText: "password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            obscureText: _isVisible,
                            cursorColor: Colors.white60,
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(30, 50, 30, 0),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.teal,
                                    padding:
                                        const EdgeInsets.only(right: 40, left: 40)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyHomePage()));
                                },
                                child:const Text("Login")),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              const Text("Don't have an account ?",
                                  style: TextStyle(fontSize: 20)),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SignUp()));
                                  },
                                  child: const Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        color: Colors.purpleAccent,
                                        fontSize: 22),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
