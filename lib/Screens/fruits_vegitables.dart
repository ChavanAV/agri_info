import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FruVeg extends StatefulWidget {
  const FruVeg({Key? key}) : super(key: key);

  @override
  State<FruVeg> createState() => _FruVegState();
}

class _FruVegState extends State<FruVeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.blue.withOpacity(.15),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                height: 45,
                // width: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    labelText: "Search Grossary",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                ),
              ),
              Container(
                height: 130,
                width: 130,
                color: CupertinoColors.destructiveRed,
                child: Image.asset("assets/images/bananas-404536.jpg",fit: BoxFit.cover),
              ),
              Container(
                height: 130,
                width: 130,
                color: CupertinoColors.destructiveRed,
                child: Image.asset("assets/images/bananas-404536.jpg",fit: BoxFit.cover),
              ),
              Container(
                height: 130,
                width: 130,
                color: CupertinoColors.destructiveRed,
                child: Image.asset("assets/images/bananas-404536.jpg",fit: BoxFit.cover),
              ),
              Container(
                height: 130,
                width: 130,
                color: CupertinoColors.destructiveRed,
                child: Image.asset("assets/images/bananas-404536.jpg",fit: BoxFit.cover),
              ),Container(
                height: 130,
                width: 130,
                color: CupertinoColors.destructiveRed,
                child: Image.asset("assets/images/bananas-404536.jpg",fit: BoxFit.cover),
              ),Container(
                height: 130,
                width: 130,
                color: CupertinoColors.destructiveRed,
                child: Image.asset("assets/images/bananas-404536.jpg",fit: BoxFit.cover),
              ),Container(
                height: 130,
                width: 130,
                color: CupertinoColors.destructiveRed,
                child: Image.asset("assets/images/bananas-404536.jpg",fit: BoxFit.cover),
              ),Container(
                height: 130,
                width: 130,
                color: CupertinoColors.destructiveRed,
                child: Image.asset("assets/images/bananas-404536.jpg",fit: BoxFit.cover),
              ),Container(
                height: 130,
                width: 130,
                color: CupertinoColors.destructiveRed,
                child: Image.asset("assets/images/bananas-404536.jpg",fit: BoxFit.cover),
              ),Container(
                height: 130,
                width: 130,
                color: CupertinoColors.destructiveRed,
                child: Image.asset("assets/images/bananas-404536.jpg",fit: BoxFit.cover),
              ),
              Container(
                height: 130,
                width: 130,
                color: CupertinoColors.destructiveRed,
                child: Image.asset("assets/images/bananas-404536.jpg",fit: BoxFit.cover),
              ),








            ],
          ),
        ),
      ),
    );
  }
}
