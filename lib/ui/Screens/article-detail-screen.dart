import 'package:ecommerceapp/ui/Widgets/cart-counter.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ProductDetailScreen extends StatefulWidget {
  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  String description =
      'Toss Pillows included\nTop seat top: 1"\nBetween arms: 55"\nArm width: 4"\nWeight Capacity: 500 lb\nProduct care: Spot clean with a damp cloth and water\nFrame Material: Solid Wood ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 60,
        child: FloatingActionButton.extended(
          onPressed: () {
            // Add your onPressed code here!
          },
          label: Text(
            'ADD TO BAG',
            style: TextStyle(fontSize: 18),
          ),
          icon: Icon(Icons.add_shopping_cart),
          backgroundColor: Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width * 0.8,
                      child: Carousel(
                        boxFit: BoxFit.cover,
                        images: [
                          AssetImage('assets/images/KennedyBarrelChair-1.jpg'),
                          AssetImage('assets/images/KennedyBarrelChair-2.jpg'),
                          AssetImage('assets/images/KennedyBarrelChair-3.jpg'),
                          AssetImage('assets/images/KennedyBarrelChair-4.jpg'),
                        ],
                        autoplay: false,
                        indicatorBgPadding: 24,
                        dotBgColor: Colors.transparent,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: IconButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        icon: Icon(
                          Icons.arrow_back,
                          size: 28,
                          color: Color.fromRGBO(128, 128, 128, 1),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(26),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width * 0.8 - 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Text(
                                    "Kennedy Barrel Chair",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: CartCounter(),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "\$789.99",
                                style: TextStyle(
                                    color: Color.fromRGBO(177, 30, 46, 1),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "This oversized chair is perfect for those looking to spend hours sprawled out reading their favorite book or for those who just want to cuddle with the one they love. The barrel chair's handpicked fabric has a special sheen that creates a look of total elegance.",
                                  style: TextStyle(
                                      color: Colors.grey[500],
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal),
                                ),
                                Container(
                                  child: Material(
                                    color: Colors.white,
                                    child: ExpandablePanel(
                                      header: Container(
                                        height: 28,
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'MORE INFO',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Colors.grey[600],
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ),
                                      expanded: Text(
                                        description,
                                        softWrap: true,
                                      ),
                                      // ignore: deprecated_member_use
                                      tapHeaderToExpand: true,
                                      // ignore: deprecated_member_use
                                      hasIcon: true,
                                      // ignore: deprecated_member_use
                                      iconPlacement:
                                          ExpandablePanelIconPlacement.right,
                                      // ignore: deprecated_member_use
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.bottom,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text(
                                    'YOU MIGHT ALSO LIKE',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: () => print("tpp"),
                                          child: Container(
                                            width: 100,
                                            margin: EdgeInsets.only(
                                              left: 5,
                                              right: 5,
                                            ),
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: 90,
                                                  height: 80,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/Sofa.jpg'),
                                                        fit: BoxFit.cover),
                                                  ),
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Sofa',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    Text('\$799'),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 100,
                                          margin: EdgeInsets.only(
                                            left: 5,
                                            right: 5,
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 90,
                                                height: 80,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/PinkCouch.jpg'),
                                                      fit: BoxFit.cover),
                                                ),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Couch',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text('\$989.99'),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 100,
                                          margin: EdgeInsets.only(
                                            left: 5,
                                            right: 5,
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 90,
                                                height: 80,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/DinnerTable.jpg'),
                                                      fit: BoxFit.cover),
                                                ),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Dinner table',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text('\$759.99'),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 100,
                                          margin: EdgeInsets.only(
                                            left: 5,
                                            right: 5,
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 90,
                                                height: 80,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/BlackBed.jpg'),
                                                      fit: BoxFit.cover),
                                                ),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Bed',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text('\$574.99'),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 60,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
