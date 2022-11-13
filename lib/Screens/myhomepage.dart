import 'package:agri_info/Screens/login_page.dart';
import 'package:flutter/material.dart';
import '../Bar Chart/bar_chart.dart';
import 'package:charts_flutter_new/flutter.dart' as charts;

import 'home_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 4,
      child: Scaffold(
          drawer: SafeArea(
            child: Drawer(
              backgroundColor: Colors.white,
              elevation: 10,
              width: 250,
              // shape:
              // RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: ListView(
                children: [
                  const UserAccountsDrawerHeader(
                    accountName: Text("Akshay"),
                    accountEmail: Text("Way To Horizon"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7cMEr9HXbWjjGArjVcAbnfiUbbfIcSSM4EQ&usqp=CAU"),
                    ),
                    margin: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.person),
                    title: Text("My Profile"),
                  ),
                  const ListTile(
                    leading: Icon(Icons.privacy_tip_outlined),
                    title: Text("Privacy"),
                  ),
                  const ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Log Out"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                  ),
                ],
              ),
            ),
          ),
          appBar: AppBar(
            title: const Text("Goods Information"),
            backgroundColor: const Color(0xFF0c9869),
            centerTitle: true,
            toolbarHeight: 25,
            bottom: const TabBar(
              indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
              splashBorderRadius: BorderRadius.all(Radius.circular(15)),
                indicatorColor: Colors.black,
                tabs: [
              Tab(
                text: "Home",
              ),
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Calls",
              ),
              Tab(
                text: "Messages",
              ),
            ]),
          ),
          body: TabBarView(
              children: [
                HomeScreen(),
                Text("data1"),
                Text("data2"),
                Text("data3"),
              ]
          )
      )
  );
}
