import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Codepur";
  final String email = "singh.abhaysingh.abhay0009@gmail.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter by $name"),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Abhay Singh"),
                accountEmail: Text("singh.abhay@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/abhay.jpg"),
                ),
              ),
              DrawerListTile(
                title: "Home",
                icon: Icons.home,
              ),
              DrawerListTile(
                title: "E-mail",
                icon: Icons.email,
              ),
              DrawerListTile(
                title: "Profile",
                icon: Icons.account_box_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  DrawerListTile({@required this.title, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
        size: 30,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
        textScaleFactor: 1.2,
      ),
    );
  }
}
