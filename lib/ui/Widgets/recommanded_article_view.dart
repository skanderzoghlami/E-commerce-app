import 'package:ecommerceapp/models/product.dart';
import 'package:ecommerceapp/ui/Screens/article_detail_screen.dart';
import 'package:flutter/material.dart';

class RecommandedArticleView extends StatelessWidget {
  final Product article;
  RecommandedArticleView({this.article});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                ProductDetailScreen(
              article: Product(
                id: article.id,
                aName: article.aName,
                description: article.description,
                moreInfo: article.moreInfo,
                price: article.price,
                images: article.images,
              ),
            ),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var begin = Offset(1.0, 0.0);
              var end = Offset.zero;
              var curve = Curves.ease;
              var tween =
                  Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        );
      },
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
                    article.images.elementAt(0),
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    article.aName,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Text('\$${article.price}'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
