import 'package:flutter/material.dart';

import '../Screens/home_screen.dart';

List<GreenItems>items=[
  const GreenItems(
    AI:AssetImage("assets/images/bananas-404536.jpg"),
    T:"Text",
  ),
  const GreenItems(
    AI:AssetImage("assets/images/grapes-276070.jpg"),
    T:"Text",
  ),
  const GreenItems(
    AI:AssetImage("assets/images/garlic-3747176.jpg"),
    T:"Text",
  ),
  const GreenItems(
    AI:AssetImage("assets/images/garden-774076.jpg"),
    T:"Text",
  ),
  const GreenItems(
    AI:AssetImage("assets/images/corn-3560744.jpg"),
    T:"Text",
  ),
  const GreenItems(
    AI:AssetImage("assets/images/corn-1841271.jpg"),
    T:"Text",
  ),
  const GreenItems(
    AI:AssetImage("assets/images/cabbage-1498842.jpg"),
    T:"Text",
  ),
  const GreenItems(
    AI:AssetImage("assets/images/bitter-gourd-4345074.jpg"),
    T:"Text",
  ),


];

class GreenItems {
  final AssetImage AI;
  final String T;

  const GreenItems({
    required this.T,
    required this.AI,
  });
}

Widget GridItems(GreenItems item) => Column(
  children: [
    Flexible(
      flex: 8,
      child: Container(
          color: Colors.blue,
          child: Image(
            image: item.AI,
            fit: BoxFit.fill,

          )
      ),
    ),
    Flexible(
      flex: 3,
      child: Container(
        color: Colors.blue.withOpacity(.15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Center(
                child: Expanded(
                    child: Text(
                      "View",
                      style: TextStyle(color: Colors.red),
                    ))),
            Center(child: Expanded(child: Icon(Icons.navigate_next)))
          ],
        ),
      ),
    )
  ],
);


class GreedVB extends StatefulWidget {
  const GreedVB({Key? key}) : super(key: key);

  @override
  State<GreedVB> createState() => _GreedVBState();
}

class _GreedVBState extends State<GreedVB> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 6,
      padding: const EdgeInsets.all(10),
      itemBuilder:(context, index) {
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
    );
  }
}
