import 'package:ecommerceapp/models/product.dart';
import 'package:ecommerceapp/ui/Widgets/cart-counter.dart';
import 'package:ecommerceapp/ui/Widgets/recommanded-article.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ProductDetailScreen extends StatefulWidget {
  final Product article;

  ProductDetailScreen({this.article});

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
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
                          for (var i = 0; i < widget.article.images.length; i++)
                            AssetImage(widget.article.images.elementAt(i)),

                          /*AssetImage('assets/images/KennedyBarrelChair-1.jpg'),
                          AssetImage('assets/images/KennedyBarrelChair-2.jpg'),
                          AssetImage('assets/images/KennedyBarrelChair-3.jpg'),
                          AssetImage('assets/images/KennedyBarrelChair-4.jpg'),*/
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
                          color: Colors.grey[900],
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
                                    widget.article.aName,
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
                                "\$${widget.article.price}",
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
                                  widget.article.description,
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
                                        widget.article.moreInfo,
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
                                        RecommandedArticleView(
                                          article: Product(
                                            id: 2,
                                            aName: 'Sofa',
                                            description: 'Best sofa ever',
                                            moreInfo: 'Color: Brown',
                                            price: '799',
                                            images: ['assets/images/Sofa.jpg'],
                                          ),
                                        ),
                                        RecommandedArticleView(
                                          article: Product(
                                            id: 3,
                                            aName: 'Couch',
                                            description: 'Comfy comfy',
                                            moreInfo: 'Color: Pink',
                                            price: '989.99',
                                            images: [
                                              'assets/images/PinkCouch.jpg'
                                            ],
                                          ),
                                        ),
                                        RecommandedArticleView(
                                          article: Product(
                                            id: 4,
                                            aName: 'Dinner table',
                                            description: 'Best for family',
                                            moreInfo: 'Color: Black',
                                            price: '759.99',
                                            images: [
                                              'assets/images/DinnerTable.jpg'
                                            ],
                                          ),
                                        ),
                                        RecommandedArticleView(
                                          article: Product(
                                            id: 4,
                                            aName: 'Bed',
                                            description:
                                                'This bed got your back for romantic nights ;)',
                                            moreInfo: 'Color: Black',
                                            price: '574.99',
                                            images: [
                                              'assets/images/BlackBed.jpg'
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
