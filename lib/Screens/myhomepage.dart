import 'package:agri_info/Screens/login_page.dart';
import 'package:agri_info/Screens/fruits_vegitables.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter_new/flutter.dart' as charts;

import 'history_page.dart';
import 'home_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 3,
      child: SafeArea(
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
              backgroundColor: Colors.teal.withOpacity(.8),
              elevation: 0,
              centerTitle: true,
              toolbarHeight: 40,
              bottom: const TabBar(
                indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
                splashBorderRadius: BorderRadius.all(Radius.circular(20)),
                  splashFactory: InkSplash.splashFactory,
                  indicatorColor: Colors.black,
                  tabs: [
                Tab(
                  text: "Home",
                ),
                Tab(
                  text: "Grossary",
                ),
                Tab(
                  text: "History",
                ),
              ]),
            ),
            body: const TabBarView(
                children: [
                  HomeScreen(),
                  FruVeg(),
                  HistoryPage(),
                ]
            )
        ),
      )
  );
}
