// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flowers/components/appbar.dart';
import 'package:flowers/components/drawer.dart';
import 'package:flowers/constants/colors_sizedbox.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor900,
        title: Text(
          "Zahratak",
          style: TextStyle(color: mainColor50),
        ),
        actions: [AppbarActionSide()],
      ),
      drawer: MainDrawer(
        accountEmail: "husam@husam.com",
        accountName: "Husam Abdallah",
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 22,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: mainColor900,
                      ),
                      height: 80,
                      width: 80,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: GridTile(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Text("image"),
                                ),
                              ],
                            )
                          ],
                        ),
                        footer: GridTileBar(
                          trailing: IconButton(
                            color: mainColor900,
                            onPressed: () {},
                            icon: Icon(Icons.add_shopping_cart_outlined),
                          ),
                          leading: Text(" \$123 "),
                          title: Text(
                            "",
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
