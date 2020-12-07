import 'package:ecommerceapp/models/bagProducts.dart';
import 'package:ecommerceapp/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'article_detail_screen.dart';

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
                      /*BagArticle(
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
                      ),*/
                      for (var i = 0; i < bagProducts.length; i++)
                        bagProduct(
                          bagProducts.elementAt(i),
                          quantities.elementAt(i),
                        ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(
                          top: 20,
                          left: 20,
                          right: 20,
                          bottom: 10,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              (total() != 0) ? "Total :" : '',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: (total() != 0)
                                    ? Text(
                                        "${total().toStringAsFixed(3)}\$",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    : null,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 85,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  double total() {
    double s = 0;
    for (var i = 0; i < bagProducts.length; i++)
      s += (double.parse(bagProducts.elementAt(i).price) *
          quantities.elementAt(i));
    return s;
  }

  Widget bagProduct(Product p, int q) {
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  ProductDetailScreen(
                article: p,
              ),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                var begin = Offset(1.0, 0.0);
                var end = Offset.zero;
                var curve = Curves.ease;
                var tween = Tween(begin: begin, end: end)
                    .chain(CurveTween(curve: curve));
                return SlideTransition(
                  position: animation.drive(tween),
                  child: child,
                );
              },
            ),
          );
        },
        child: Container(
          width: MediaQuery.of(context).size.width - 24,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color.fromRGBO(192, 192, 192, 0.5),
                width: 1,
              ),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Image:
              Container(
                height: 80,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(20.0),
                    topRight: const Radius.circular(20.0),
                    bottomLeft: const Radius.circular(20.0),
                    bottomRight: const Radius.circular(20.0),
                  ),
                  border: Border(
                    bottom: BorderSide(
                        color: Color.fromRGBO(192, 192, 192, 1), width: 2),
                    left: BorderSide(
                        color: Color.fromRGBO(192, 192, 192, 1), width: 2),
                    right: BorderSide(
                        color: Color.fromRGBO(192, 192, 192, 1), width: 2),
                    top: BorderSide(
                        color: Color.fromRGBO(192, 192, 192, 1), width: 2),
                  ),
                  image: DecorationImage(
                    image: AssetImage(p.images.elementAt(0)),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                p.aName,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "\$${p.price}",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "${p.description}",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            InkWell(
                              /*splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                focusColor: Colors.transparent,*/
                              child: Icon(CupertinoIcons.delete),
                              onTap: () {
                                for (var i = 0; i < bagProducts.length; i++) {
                                  if (bagProducts.elementAt(i).id == p.id)
                                    setState(() {
                                      bagProducts.removeAt(i);
                                      quantities.removeAt(i);
                                    });
                                }
                              },
                            ),
                            SizedBox(
                              height: 21,
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  buildOutlineButton(
                                    icon: Icons.remove,
                                    press: () {
                                      int ea;
                                      for (var i = 0;
                                          i < bagProducts.length;
                                          i++)
                                        if (bagProducts.elementAt(i).id ==
                                            p.id) {
                                          ea = i;
                                          break;
                                        }
                                      if (quantities.elementAt(ea) > 1) {
                                        setState(() {
                                          quantities[ea]--;
                                        });
                                      }
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(7),
                                    child: Text(
                                      q.toString().padLeft(2, "0"),
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                    ),
                                  ),
                                  buildOutlineButton(
                                      icon: Icons.add,
                                      press: () {
                                        int ea;
                                        for (var i = 0;
                                            i < bagProducts.length;
                                            i++)
                                          if (bagProducts.elementAt(i).id ==
                                              p.id) {
                                            ea = i;
                                            break;
                                          }
                                        setState(() {
                                          quantities[ea]++;
                                        });
                                      }),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox buildOutlineButton({IconData icon, Function press}) {
    return SizedBox(
      width: 28,
      height: 25,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
