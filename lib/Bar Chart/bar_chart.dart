import 'dart:ui';
import 'package:charts_flutter_new/flutter.dart' as charts;
import 'package:flutter/material.dart';
class bchart {
  String Grosary;
  int financial;
  final Color color;

  bchart({required this.Grosary, required this.financial, required this.color});
}

List<bchart> data = [
  bchart(
    Grosary: 'Tomato',
    financial: 200,
    color: Colors.red,

  ),
  bchart(
    Grosary: 'Potato',
    financial: 234,
    color: Colors.green,
  ),
  bchart(
    Grosary: 'Carrot',
    financial: 564,
    color: Colors.cyanAccent,
  ),
  bchart(
    Grosary: 'Mula',
    financial: 344,
    color: Colors.orangeAccent,
  ),
  bchart(
    Grosary: 'Gajar',
    financial: 423,
    color: Colors.blue,
  ),
  // bchart(
  //   Grosary: 'xyz',
  //   financial: 113,
  //   color: Colors.blue,
  // ),
  // bchart(
  //   Grosary: 'xyzw',
  //   financial: 113,
  //   color: Colors.blue,
  // ),
  // bchart(
  //   Grosary: 'Tomato1',
  //   financial: 200,
  //   color: Colors.red,
  //
  // ),
  // bchart(
  //   Grosary: 'Potato1',
  //   financial: 2314,
  //   color: Colors.green,
  // ),
  // bchart(
  //   Grosary: 'Carrot1',
  //   financial: 5164,
  //   color: Colors.cyanAccent,
  // ),
  // bchart(
  //   Grosary: 'Mula11',
  //   financial: 3144,
  //   color: Colors.orangeAccent,
  // ),
  // bchart(
  //   Grosary: 'Gajar1',
  //   financial: 4123,
  //   color: Colors.blue,
  // ),
  // bchart(
  //   Grosary: 'xyz1',
  //   financial: 1113,
  //   color: Colors.blue,
  // ),
  // bchart(
  //   Grosary: 'xyzw1',
  //   financial: 113,
  //   color: Colors.blue,
  // ),

];

List<charts.Series<bchart, String>> series = [
  charts.Series(
    id: "Grosary",
    data: data,
    domainFn: (bchart series, _) => series.Grosary,
    measureFn: (bchart series, _) => series.financial,
    // colorFn: (bchart series,_)=>series.color,
  )
];
