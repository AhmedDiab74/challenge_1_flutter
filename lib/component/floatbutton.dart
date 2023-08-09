import 'package:flutter/material.dart';

class FloatButton extends StatelessWidget {
  const FloatButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.green,
      onPressed: () {},
      child: const Icon(
        Icons.shopping_bag_outlined,
        size: 50,
      ),
    );
  }
}
