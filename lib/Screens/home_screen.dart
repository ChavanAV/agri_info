import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../All Items/green_items.dart';
import '../Bar Chart/bar_chart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}




class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
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
              margin: const EdgeInsets.all(10),
              height: 320,
              // padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15)),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.maxFinite,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.teal.withOpacity(.7),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15)),
                    ),
                    child: const Center(
                        child: Text(
                      "PaleBhajya",
                      style: TextStyle(fontSize: 22),
                    )),
                  ),
                  GreedVB(),
                  Container(
                      width: double.maxFinite,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.teal.withOpacity(.7),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Center(
                              child: Expanded(
                                  child: Text(
                            "View More",
                            style: TextStyle(fontSize: 18),
                          ))),
                          Center(
                              child: Expanded(child: Icon(Icons.navigate_next)))
                        ],
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 320,
              // padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15)),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.maxFinite,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.teal.withOpacity(.7),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15)),
                    ),
                    child: Center(
                        child: Text(
                      "PaleBhajya",
                      style: TextStyle(fontSize: 22),
                    )),
                  ),
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: GridView.builder(
                        itemCount: 8,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            color: Colors.blue,
                          );
                        },
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                      ),
                    ),
                  ),
                  Container(
                      width: double.maxFinite,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.teal.withOpacity(.7),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                              child: Expanded(
                                  child: Text(
                            "View More",
                            style: TextStyle(fontSize: 18),
                          ))),
                          Center(
                              child: Expanded(child: Icon(Icons.navigate_next)))
                        ],
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 320,
              // padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15)),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.maxFinite,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.teal.withOpacity(.7),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15)),
                    ),
                    child: Center(
                        child: Text(
                      "PaleBhajya",
                      style: TextStyle(fontSize: 22),
                    )),
                  ),
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: GridView.builder(
                        itemCount: 8,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            color: Colors.blue,
                          );
                        },
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                      ),
                    ),
                  ),
                  Container(
                      width: double.maxFinite,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.teal.withOpacity(.7),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                              child: Expanded(
                                  child: Text(
                            "View More",
                            style: TextStyle(fontSize: 18),
                          ))),
                          Center(
                              child: Expanded(child: Icon(Icons.navigate_next)))
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }


}

