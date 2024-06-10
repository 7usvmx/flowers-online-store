import 'package:flowers/constants/colors_sizedbox.dart';
import 'package:flutter/material.dart';

class AppbarActionSide extends StatelessWidget {
  const AppbarActionSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: mainColor50,
              ),
            ),
            Positioned(
              top: -5,
              child: Container(
                decoration:
                    BoxDecoration(color: mainColor100, shape: BoxShape.circle),
                padding: const EdgeInsets.all(4),
                child: Text("0"),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 24, 0),
          child: Text(
            "\$12.33",
            style: TextStyle(color: mainColor50),
          ),
        ),
      ],
    );
  }
}
