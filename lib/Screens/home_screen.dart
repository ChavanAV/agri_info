import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter_new/flutter.dart' as charts;

import '../Bar Chart/bar_chart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<charts.Series<bchart, String>> series = [

    charts.Series(
      id: "Grosary",
      data: data,
      domainFn: (bchart series, _) => series.Grosary,
      measureFn: (bchart series, _) => series.financial,
      // colorFn: (bchart series,_)=>series.color,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              height: 45,
              // width: 240,
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
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.only(
                  left: 5, bottom: 10, top: 0, right: 5),
              width: 380,
              height: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white.withOpacity(.7),
                  border: Border.all(
                    color: Colors.black38,
                    width: 1,
                  )),
              child: Stack(children: [
                Container(
                    alignment: Alignment.topCenter,
                    child: const Text("Pandharpur Market",
                        style: TextStyle(fontSize: 18))),
                charts.BarChart(
                  series,
                  animate: true,
                ),
              ]),
            ),
            Container(
              height: 400,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: const Color(0xFF0c9869),
                  border: Border.all(
                    color: Colors.black38,
                    width: 1,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
