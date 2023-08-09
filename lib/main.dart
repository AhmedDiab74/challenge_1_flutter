import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task1/component/categorySection.dart';
import 'package:task1/screens/homePage.dart';

import 'component/bottomNavigation.dart';
import 'component/featuredProducts.dart';
import 'component/floatbutton.dart';

void main() {
  runApp(const task());
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
          bottomNavigationBar: const BottomNavigation(),
          floatingActionButton: const SizedBox(
            width: 80,
            height: 80,
            child: FloatButton(),
          )),
    );
  }
}
