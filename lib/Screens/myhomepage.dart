import 'package:agri_info/Screens/login_page.dart';
import 'package:agri_info/Screens/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: Drawer(
          backgroundColor: Colors.white,
          elevation: 10,
          width: 250,
          // shape:
          // RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: ListView(
            children:  [
                const UserAccountsDrawerHeader(
                    accountName: Text("Akshay"),
                    accountEmail: Text("Way To Horizon"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7cMEr9HXbWjjGArjVcAbnfiUbbfIcSSM4EQ&usqp=CAU"),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                },
              ),
            ],
          ),

        ),
      ),

      appBar: AppBar(
        title: Text("Goods Information"),
        elevation: 7,
        backgroundColor: Colors.teal,
        centerTitle: true,
        shadowColor: Colors.red,

      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.teal,
            ),

          ],
        ),
      ),
    );
  }
}
