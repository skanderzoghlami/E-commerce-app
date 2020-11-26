import 'package:flutter/material.dart';
import './pictures.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final double categoryHeight =
    //MediaQuery.of(context).size.height * 0.30 - 50;
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Categories',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 26),
              ),
            ),
            Row(
              children: [
                Picture('assets/imagesproduct/chair.jpg', 'Chair'),
                Picture('assets/imagesproduct/bed.jpg', 'Bed'),
                Picture('assets/imagesproduct/bureau3.jpg', 'Desks'),
                Picture('assets/imagesproduct/sofa.jpg', 'Sofa'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
/*Container(
      // height: MediaQuery.of(context).size.height * 0.3,
      height: 500,
      width: 100,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 14, bottom: 6),
            child: Text(
              'Categories',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 26),
            ),
          ),*/
/*SingleChildScrollView(
      //physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          child: Row(
            children: [
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('./assets/bed.jpg')),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Most\nFavorites",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "20 Items",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 80,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('./assets/bed.jpg')),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Most\nFavorites",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "20 Items",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('./assets/bed.jpg')),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Most\nFavorites",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "20 Items",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),*/

//],

//),

/*itemBuilder: (BuildContext context, int index) {
        Container(
          height: MediaQuery.of(context).size.height * 0.3,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 14, bottom: 6),
                child: Text(
                  'Categories',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 26),
                ),
              ),
              Row(
                children: [
                  Picture('./assets/chair.jpg', 'Chair'),
                  Picture('./assets/bed.jpg', 'Bed'),
                  Picture('./assets/bureau3.jpg', 'Desks'),
                  Picture('./assets/sofa.jpg', 'Sofa'),
                  Picture('./assets/sofa.jpg', 'Sofa'),
                  Picture('./assets/sofa.jpg', 'Sofa'),
                ],
              ),
            ],
          ),
        );
      },
    );
  }*/
