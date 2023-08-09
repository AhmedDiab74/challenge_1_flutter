import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task1/component/categorySection.dart';

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
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: HexColor("#F4F5F9"),
                      prefixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: HexColor("#868889"),
                          )),
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.list,
                            color: HexColor("#868889"),
                          )),
                      border: OutlineInputBorder(),
                      hintText: "Search keywords..",
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.only(left: 50, top: 50),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/background.png"))),
                  width: 385,
                  height: 287,
                  child: Text(
                    "20% off on your\nfirst purchase",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.chevron_right,
                        size: 30,
                        color: HexColor("#868889"),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      categorySection(
                        BackgroundColor: '#E6F2EA',
                        Icon: "assets/Vegetables.svg",
                        Title: "Vegetables",
                      ),
                      categorySection(
                        BackgroundColor: '#FFE9E5',
                        Icon: "assets/fruit.svg",
                        Title: "Fruits",
                      ),
                      categorySection(
                        BackgroundColor: '#FFF6E3',
                        Icon: "assets/beverage.svg",
                        Title: "Beverage",
                      ),
                      categorySection(
                        BackgroundColor: '#F3EFFA',
                        Icon: "assets/Grocery.svg",
                        Title: "Grocery",
                      ),
                      categorySection(
                        BackgroundColor: '#DCF4F5',
                        Icon: "assets/Edible_oil.svg",
                        Title: "Edible Oil",
                      ),
                      categorySection(
                        BackgroundColor: '#FFE8F2',
                        Icon: "assets/Household.svg",
                        Title: "Household",
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Featured products",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.chevron_right,
                        size: 30,
                        color: HexColor("#868889"),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FeaturedProducts(
                      size: "dozen",
                      fruitImage: "assets/fruit_image/peach.png",
                      backgroundCircle: "#FFCEC1",
                      fruitName: "Fresh Peach",
                      Price: 8,
                    ),
                    FeaturedProducts(
                      size: "2.0 lbs",
                      fruitImage: "assets/fruit_image/Avacoda.png",
                      backgroundCircle: "#FCFFD9",
                      fruitName: "Avacoda",
                      isNew: true,
                      Price: 7.00,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FeaturedProducts(
                      size: "1.50 lbs",
                      fruitImage: "assets/fruit_image/pineapple.png",
                      backgroundCircle: "#FFE6C2",
                      fruitName: "Pineapple",
                      Price: 9.90,
                    ),
                    FeaturedProducts(
                      size: "5.0 lbs",
                      fruitImage: "assets/fruit_image/grapes.png",
                      backgroundCircle: "#FEE1ED",
                      fruitName: "Black Grapes",
                      isNew: true,
                      Price: 7.05,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FeaturedProducts(
                      size: "1.50 lbs",
                      fruitImage: "assets/fruit_image/pomegranate.png",
                      backgroundCircle: "#FFE6C2",
                      fruitName: "Pomegranate",
                      isNew: true,
                      Price: 2.9,
                    ),
                    FeaturedProducts(
                      size: "1 kg",
                      fruitImage: "assets/fruit_image/green-fresh-broccoli.png",
                      backgroundCircle: "#D2FFD0",
                      fruitName: "Fresh Broccoli",
                      Price: 3.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
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
