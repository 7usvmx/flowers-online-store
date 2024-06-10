// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flowers/components/appbar.dart';
import 'package:flowers/constants/colors_sizedbox.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool readMore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor900,
        title: Text(
          "Details",
          style: TextStyle(color: mainColor50),
        ),
        actions: const [AppbarActionSide()],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/products/1.webp"),
            sizeBetweenH26,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: mainColor900,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: EdgeInsets.fromLTRB(6, 2, 6, 2),
                    child: Text(
                      "NEW",
                      style: TextStyle(color: mainColor50),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.pin_drop_outlined),
                      sizeBetweenW10,
                      Text("Saudi Arabia")
                    ],
                  ),
                ],
              ),
            ),
            sizeBetweenH26,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Details :",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      maxLines: readMore ? null : 4,
                      overflow: TextOverflow.fade,
                      "Details Here Details Here Details Here Details Here Details Here Details Details Here Details Here Details Here Details Here Details Here Details Here Details Here Details Here Details Here Details Here Details Here Details Here Details Here Details Here Details Here Details Here Details Here Details Here Details Here Details Here Details Here Details Here Details Here  Here Details Here Details Here Details Here Details Here Details Here Details Here ",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  readMore = !readMore;
                });
              },
              child: Text("Read more"),
            ),
          ],
        ),
      ),
    );
  }
}
