import 'package:ecommerceapp/models/bagProducts.dart';
import 'package:ecommerceapp/models/product.dart';
import 'package:ecommerceapp/models/products.dart';
import 'package:ecommerceapp/ui/Widgets/cart_counter.dart';
import 'package:ecommerceapp/ui/Widgets/recommanded_article_view.dart';

import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ProductDetailScreen extends StatefulWidget {
  final Product article;
  var isFav = false;

  ProductDetailScreen({this.article});

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    var cartCounter = CartCounter();
    return Scaffold(
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 60,
        child: FloatingActionButton.extended(
          onPressed: () {
            bool found = false;
            for (var i = 0; i < bagProducts.length; i++) {
              if (bagProducts.elementAt(i).id == widget.article.id) {
                found = true;
                quantities[i] += cartCounter.numOfItems;
                break;
              }
            }
            if (!found) {
              bagProducts.add(widget.article);
              quantities.add(cartCounter.numOfItems);
            }
            return showDialog(
              context: context,
              child: AlertDialog(
                title: Text("Added to bag"),
                content: Text(
                  'This item has been added to your bag',
                  textAlign: TextAlign.left,
                ),
                actions: [
                  FlatButton(
                    child: Text("Understood!"),
                    onPressed: () => Navigator.of(context, rootNavigator: true)
                        .pop('dialog'),
                  )
                ],
              ),
            );
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
                    InkWell(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width * 0.8,
                        child: Carousel(
                          boxFit: BoxFit.cover,
                          images: [
                            for (var i = 0;
                                i < widget.article.images.length;
                                i++)
                              AssetImage(widget.article.images.elementAt(i)),
                          ],
                          autoplay: false,
                          indicatorBgPadding: 24,
                          dotBgColor: Colors.transparent,
                        ),
                      ),
                      onDoubleTap: () {
                        setState(() {
                          widget.isFav = !widget.isFav;
                        });
                      },
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      width: MediaQuery.of(context).size.width,
                      child: Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          icon: Icon(
                            widget.isFav
                                ? CupertinoIcons.heart_fill
                                : CupertinoIcons.heart,
                            size: 32,
                            color: widget.isFav ? Colors.red : Colors.grey[900],
                          ),
                          onPressed: () {
                            setState(() {
                              widget.isFav = !widget.isFav;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
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
                                child: cartCounter,
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
                                      children: generateRecommandedItems(),
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

  List<RecommandedArticleView> generateRecommandedItems() {
    List<RecommandedArticleView> l = [];
    for (var i = 0; i < allProducts.length; i++) {
      if (allProducts.elementAt(i).id != widget.article.id)
        l.add(
          RecommandedArticleView(
            article: allProducts.elementAt(i),
          ),
        );
    }
    return l;
  }
}
