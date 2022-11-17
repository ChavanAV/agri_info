import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../All Items/green_items.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(.15),
      body: SingleChildScrollView(
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
              height: 326,
              width: double.maxFinite,
              margin: EdgeInsets.symmetric(horizontal: 5),
              // padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  border: Border.all(color: Colors.grey)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    child: Text("PaleBhajya",
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                        Container(
                          width: 110,
                          height: 130,
                          color: Colors.teal,
                          child: Image.asset("assets/images/bananas-404536.jpg",
                              fit: BoxFit.fill),
                        ),
                        TextButton(onPressed: (){}, child: Text("View",style: TextStyle(color: Colors.black87,fontSize: 18),))
                      ]),
                      Container(
                        width: 110,
                        height: 130,
                        color: Colors.teal,
                        child: Image.asset(
                            "assets/images/bitter-gourd-4345074.jpg",
                            fit: BoxFit.fill),
                      ),
                      Container(
                        width: 110,
                        height: 130,
                        color: Colors.teal,
                        child: Image.asset("assets/images/cabbage-1498842.jpg",
                            fit: BoxFit.fill),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 110,
                        height: 130,
                        color: Colors.teal,
                        child: Image.asset("assets/images/corn-1841271.jpg",
                            fit: BoxFit.fill),
                      ),
                      Container(
                        width: 110,
                        height: 130,
                        color: Colors.teal,
                        child: Image.asset("assets/images/corn-3560744.jpg",
                            fit: BoxFit.fill),
                      ),
                      Container(
                        width: 110,
                        height: 130,
                        color: Colors.teal,
                        child: Image.asset("assets/images/garden-774076.jpg",
                            fit: BoxFit.fill),
                      ),
                    ],
                  ),
                  Container(
                      height: 30,
                      width: double.maxFinite,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("View More",
                                style: TextStyle(fontSize: 16),
                                textAlign: TextAlign.end),
                            Icon(Icons.navigate_next)
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
