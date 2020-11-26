import 'package:flutter/material.dart';

/*class Product {
  final int id;
  final String name;
  final String description;
  final String price;
  final String img;

  Product({
    this.id,
    this.name,
    this.description,
    this.price,
    this.img,
  });

  factory Product.fromJson(Map<dynamic, dynamic> json) {
    return Product(
      id: json["id"],
      name: json["name"],
      description: json["description"],
      price: json["price"],
      img: json["img"],
    );
  }
  Map<dynamic, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
      };
}*/

class Product extends StatefulWidget {
  final mainAxisSize = MainAxisSize.min;
  final String img;
  final String name;
  final String price;
  Product(this.img, this.name, this.price);

  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<Product> {
  // ignore: non_constant_identifier_names
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return //Expanded(
        //child: Column(
        Column(
      mainAxisSize: MainAxisSize.min,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: InkWell(
          onDoubleTap: () {
            setState(() {
              isFav = !isFav;
            });
          },
          child: Container(
            child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                focusColor: Colors.transparent,
                icon: isFav
                    ? Icon(Icons.favorite, color: Colors.red)
                    : Icon(Icons.favorite_outline, color: Colors.black),
                onPressed: () {
                  setState(() {
                    isFav = !isFav;
                  });
                },
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.6,
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.img),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(16),
            ),

            //child: Padding(
            // padding: EdgeInsets.all(16.0),
            //child: Image(image: AssetImage(img)),
          ),
        )
            //IconButton(icon: isFav,
            // onPressed: null)

            ),
        Text(
          widget.name,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
        Text(
          "${this.widget.price} \$",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ],
      //),
    );
  }
}
