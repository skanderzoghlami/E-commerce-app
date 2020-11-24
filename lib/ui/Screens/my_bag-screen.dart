import 'package:ecommerceapp/ui/Widgets/bag-article.dart';
import 'package:flutter/material.dart';

class MyBagScreen extends StatefulWidget {
  @override
  _MyBagScreenState createState() => _MyBagScreenState();
}

class _MyBagScreenState extends State<MyBagScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 8,
                bottom: 15,
              ),
              child: Text(
                "My Bag",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BagArticle(
                        aName: "Kennedy 64\" Barrel Chair",
                        description: "Beige",
                        price: "789.99",
                        quantity: 1,
                        imgPath:
                            "https://secure.img1-fg.wfcdn.com/im/71584959/resize-h700-w700%5Ecompr-r85/4070/40706681/Kennedy+64%2522+Barrel+Chair.jpg",
                      ),
                      BagArticle(
                        aName: "Sofa",
                        description: "Brown and White",
                        price: "799",
                        quantity: 1,
                        imgPath:
                            "https://cgaxisimg.ams3.cdn.digitaloceanspaces.com/2014/08/161.jpg",
                      ),
                      BagArticle(
                        aName: "Couch",
                        description: "Pink",
                        price: "989.99",
                        quantity: 1,
                        imgPath:
                            "https://media.discordapp.net/attachments/650078764277039124/779025345558609941/Home__Apartment__Furniture_Decor__More.jpg?width=316&height=474",
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
