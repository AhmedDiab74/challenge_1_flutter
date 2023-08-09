import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FeaturedProducts extends StatefulWidget {
  IconData? iconData = Icons.favorite_border;
  Color colorFav = Colors.black;
  Color colorAdd = Colors.black;
  Color colorBag = Colors.green;
  Color background = Colors.white;
  String fruitImage;
  String fruitName;
  String backgroundCircle;
  double Price;
  double? width = 101;
  double? height = 82;
  String size;
  bool? isNew = false;
  FeaturedProducts(
      {super.key,
      required this.fruitImage,
      required this.Price,
      this.isNew,
      required this.backgroundCircle,
      required this.fruitName,
      required this.size,
      this.height,
      this.width});
  @override
  State<FeaturedProducts> createState() => _FeaturedProductsState();
}

class _FeaturedProductsState extends State<FeaturedProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: 181,
      height: 304,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              widget.isNew == true
                  ? Container(
                      // padding: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      color: HexColor("#FDEFD5"),
                      margin: const EdgeInsets.only(left: 5),
                      width: 50,
                      height: 25,
                      child: Text(
                        "NEW",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 15, color: HexColor("#E8AD41")),
                      ),
                    )
                  : Container(
                      // padding: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      color: Colors.white,
                      margin: const EdgeInsets.only(left: 5),
                      width: 50,
                      height: 25,
                    ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      if (widget.colorFav == Colors.red) {
                        widget.iconData = Icons.favorite_border;
                        widget.colorFav = Colors.black;
                      } else {
                        widget.iconData = Icons.favorite;
                        widget.colorFav = Colors.red;
                      }
                    });
                  },
                  icon: Icon(
                    widget.iconData,
                    color: widget.colorFav,
                    size: 32,
                  ))
            ],
          ),
          Stack(alignment: Alignment.center, children: [
            CircleAvatar(
              backgroundColor: HexColor(widget.backgroundCircle),
              radius: 50,
            ),
            Container(
              // width: 100,
              // height: 200,
              margin: const EdgeInsets.only(top: 40, right: 10),
              child: Image.asset(
                widget.fruitImage,
                width: widget.width,
                height: widget.height,
              ),
            ),
          ]),
          const Spacer(flex: 1),
          Text(
            textAlign: TextAlign.center,
            "\$ " + widget.Price.toString(),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: HexColor("#6CC51D"),
            ),
          ),
          const Spacer(flex: 1),
          Text(
            textAlign: TextAlign.center,
            widget.fruitName,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Text(
            widget.size,
            style: TextStyle(color: HexColor("#868889")),
          ),
          const Divider(
            thickness: 1,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                if (widget.background == Colors.white) {
                  widget.background = Colors.red;
                  widget.colorAdd = Colors.white;
                  widget.colorBag = Colors.white;
                } else {
                  widget.background = Colors.white;
                  widget.colorAdd = Colors.black;
                  widget.colorBag = Colors.green;
                }
              });
            },
            child: Container(
              height: 45,
              color: widget.background,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    size: 30,
                    color: widget.colorBag,
                  ),
                  Text(
                    "Add to cart",
                    style: TextStyle(fontSize: 20, color: widget.colorAdd),
                  ),
                ],
              ),
            ),
          )
          // Spacer(flex: 5),
        ],
      ),
    );
  }
}
