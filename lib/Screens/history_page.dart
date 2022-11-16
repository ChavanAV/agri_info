import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            const SizedBox(
              height: 10,
            ),
            Container(
                height: 40,
                width: double.maxFinite,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "All Activities",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                )),
            const ListTile(
              leading: Image(image: AssetImage("assets/images/bananas-404536.jpg")),
              // leading: Container(color: Colors.black),
              title: Text("Apple"),
              subtitle: Text("23.SF"),
              hoverColor: Colors.indigo,
            ),
            const ListTile(
              leading: Image(image: AssetImage("assets/images/bananas-404536.jpg")),
              // leading: Container(color: Colors.black),
              title: Text("Apple"),
              subtitle: Text("23.SF"),
              hoverColor: Colors.indigo,
            ),
            const ListTile(
              leading: Image(image: AssetImage("assets/images/bananas-404536.jpg")),
              // leading: Container(color: Colors.black),
              title: Text("Apple"),
              subtitle: Text("23.SF"),
              hoverColor: Colors.indigo,
            ),
            const ListTile(
              leading: Image(image: AssetImage("assets/images/bananas-404536.jpg")),
              // leading: Container(color: Colors.black),
              title: Text("Apple"),
              subtitle: Text("23.SF"),
              hoverColor: Colors.indigo,
            ),
            const ListTile(
              leading: Image(image: AssetImage("assets/images/bananas-404536.jpg")),
              // leading: Container(color: Colors.black),
              title: Text("Apple"),
              subtitle: Text("23.SF"),
              hoverColor: Colors.indigo,
            ),
            const ListTile(
              leading: Image(image: AssetImage("assets/images/bananas-404536.jpg")),
              // leading: Container(color: Colors.black),
              title: Text("Apple"),
              subtitle: Text("23.SF"),
              hoverColor: Colors.indigo,
            ),
            const ListTile(
              leading: Image(image: AssetImage("assets/images/bananas-404536.jpg")),
              // leading: Container(color: Colors.black),
              title: Text("Apple"),
              subtitle: Text("23.SF"),
              hoverColor: Colors.indigo,
            ),
            const ListTile(
              leading: Image(image: AssetImage("assets/images/bananas-404536.jpg")),
              // leading: Container(color: Colors.black),
              title: Text("Apple"),
              subtitle: Text("23.SF"),
              hoverColor: Colors.indigo,
            ),
            const ListTile(
              leading: Image(image: AssetImage("assets/images/bananas-404536.jpg")),
              // leading: Container(color: Colors.black),
              title: Text("Apple"),
              subtitle: Text("23.SF"),
              hoverColor: Colors.indigo,
            ),
            const ListTile(
              leading: Image(image: AssetImage("assets/images/bananas-404536.jpg")),
              // leading: Container(color: Colors.black),
              title: Text("Apple"),
              subtitle: Text("23.SF"),
              hoverColor: Colors.indigo,
            ),
          ],
        ),
      ),

    );
  }
}
