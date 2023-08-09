import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task1/component/categorySection.dart';
import 'package:task1/screens/homePage.dart';

import 'component/featuredProducts.dart';

void main() {
  runApp(task());
}

class task extends StatefulWidget {
  const task({super.key});

  @override
  State<task> createState() => _taskState();
}

class _taskState extends State<task> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: HomePage(),
          bottomNavigationBar: Container(
            alignment: Alignment.center,
            height: 50,
            child: Row(
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
          ),
          floatingActionButton: SizedBox(
            width: 80,
            height: 80,
            child: FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: () {},
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 50,
              ),
            ),
          )),
    );
  }
}
