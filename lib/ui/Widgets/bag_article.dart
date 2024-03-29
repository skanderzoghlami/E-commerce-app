/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BagArticle extends StatefulWidget {
  final String aName;
  final String description;
  final String price;
  final int quantity;
  final String imgPath;

  int numOfItems;

  BagArticle(
      {this.aName,
      this.description,
      this.price,
      this.quantity,
      this.imgPath,
      this.numOfItems = 1});
  @override
  _BagArticleState createState() => _BagArticleState();
}

class _BagArticleState extends State<BagArticle> {
  @override
  Widget build(BuildContext context) {
    return Center(
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
                  image: NetworkImage(widget.imgPath),
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
                              widget.aName,
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
                              "\$${widget.price}",
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
                              "Color : ${widget.description}",
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
                              return null;
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
                                    if (widget.numOfItems > 1) {
                                      setState(() {
                                        widget.numOfItems--;
                                      });
                                    }
                                  },
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(7),
                                  child: Text(
                                    widget.numOfItems
                                        .toString()
                                        .padLeft(2, "0"),
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ),
                                buildOutlineButton(
                                    icon: Icons.add,
                                    press: () {
                                      setState(() {
                                        widget.numOfItems++;
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
*/
