// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flowers/constants/colors_sizedbox.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  final accountName;
  final accountEmail;

  const MainDrawer({
    super.key,
    required this.accountEmail,
    required this.accountName,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //! user account details
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: mainColor900),
                  accountName: Text(accountName),
                  accountEmail: Text(accountEmail),
                  currentAccountPicture: CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage("assets/images/profile.png"),
                  ),
                ),
                sizeBetweenH14,
                ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home_outlined),
                  onTap: () {},
                  contentPadding: EdgeInsets.all(10),
                ),
                divider,
                ListTile(
                  title: Text("Cart"),
                  leading: Icon(Icons.shopping_cart_outlined),
                  onTap: () {},
                  contentPadding: EdgeInsets.all(10),
                ),
                divider,
                ListTile(
                  title: Text("Profile"),
                  leading: Icon(Icons.person_3_outlined),
                  onTap: () {},
                  contentPadding: EdgeInsets.all(10),
                ),
                divider,
                ListTile(
                  title: Text("Settings"),
                  leading: Icon(Icons.settings_outlined),
                  onTap: () {},
                  contentPadding: EdgeInsets.all(10),
                ),
                divider,
                ListTile(
                  title: Text("Logout"),
                  leading: Icon(Icons.logout_outlined),
                  onTap: () {},
                  contentPadding: EdgeInsets.all(10),
                ),
                divider,
              ],
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text("Developed by Husam 2024"),
            ),
          ],
        ),
      ),
    );
  }
}
