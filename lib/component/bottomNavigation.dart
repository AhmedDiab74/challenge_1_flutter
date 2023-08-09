import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(
            flex: 3,
          ),
          Icon(
            Icons.home_outlined,
            size: 30,
          ),
          Spacer(),
          Icon(
            Icons.person_outlined,
            size: 30,
          ),
          Spacer(),
          Icon(
            Icons.favorite_border,
            size: 30,
          ),
          Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }
}
