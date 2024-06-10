import 'package:flowers/constants/colors_sizedbox.dart';
import 'package:flutter/material.dart';

class AppbarActionSide extends StatelessWidget {
  const AppbarActionSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart_outlined,
            color: mainColor50,
          ),
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
