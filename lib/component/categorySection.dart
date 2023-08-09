import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class categorySection extends StatelessWidget {
  String? BackgroundColor;

  categorySection(
      {required this.BackgroundColor, required this.Icon, required this.Title});

  String? Icon;
  String? Title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            child: CircleAvatar(
                backgroundColor: HexColor("$BackgroundColor"),
                radius: 32,
                child: SvgPicture.asset(
                  "$Icon",
                  width: 30,
                  height: 40,
                )),
          ),
          Text(
            "$Title",
            style: TextStyle(color: HexColor("##868889")),
          ),
        ],
      ),
    );
  }
}
