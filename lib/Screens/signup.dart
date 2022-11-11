import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'myhomepage.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}
bool _isVisible=false;
class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0x660ac18e),
                    Color(0x9950ac18e),
                    Color(0xcc5ac18e),
                    Color(0xff6ac18e),
                  ]
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin:const  EdgeInsets.fromLTRB(30, 20, 30, 0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        fillColor: Colors.tealAccent,
                        labelText: "Name",
                        helperText:"Enter Your Name" ,
                      ),
                      cursorColor: Colors.black,
                    ),
                  ),
                  Container(
                    margin:const  EdgeInsets.fromLTRB(30, 30, 30, 0),
                    child: TextFormField(
                      decoration:const  InputDecoration(
                          labelText: "E-mail or Mobile",
                          helperText:"Enter Your E-mail Address or Mobile number"
                      ),
                      obscureText: true,
                      cursorColor: Colors.tealAccent,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: " Set User Name",
                          helperText:"Enter Your User Name"
                      ),
                      obscureText: true,
                      cursorColor: Colors.tealAccent,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                    child: Form(
                      child: TextFormField(
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  _isVisible = !_isVisible;
                                });
                              },
                              icon: _isVisible ? const Icon(Icons.visibility_off) : Icon(Icons.visibility),
                            ),
                            labelText: " Set Password",
                            helperText:"Enter Your Password"
                        ),
                        obscureText: true,
                        cursorColor: Colors.tealAccent,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal,
                          padding: const EdgeInsets.only(right: 40, left: 40)
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => MyHomePage()));
                        },
                        child: const Text(
                          "Submit",
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );

  }
}
