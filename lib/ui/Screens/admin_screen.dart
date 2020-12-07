import 'package:ecommerceapp/ui/Widgets/custom_container.dart';
import 'package:ecommerceapp/ui/Widgets/custom_content.dart';
import 'package:flutter/material.dart';

class AdminScreen extends StatefulWidget {
  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  double kMinSatisfaction = 0.0;
  double kMaxSatisfaction = 10.0;
  int satisfaction = 5;
  List<IconData> listSatisfaction = [
    Icons.sentiment_very_dissatisfied,
    Icons.sentiment_dissatisfied,
    Icons.sentiment_neutral,
    Icons.sentiment_satisfied,
    Icons.sentiment_very_satisfied,
    Icons.sentiment_very_satisfied
  ];

  IconData satisfactionIcon = Icons.sentiment_satisfied;
  Color satisfactionColor = Colors.indigo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomContainer(
                      onPress: () {},
                      color: Colors.grey,
                      cardChild: CustomContent(
                        icon: Icons.add,
                        text: 'Add new product',
                      ),
                    ),
                  ),
                  Expanded(
                    child: CustomContainer(
                      onPress: () {},
                      color: Colors.grey,
                      cardChild: CustomContent(
                        icon: Icons.list_alt_outlined,
                        text: 'Check list of products',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CustomContainer(
                onPress: () {},
                color: Colors.grey,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      satisfactionIcon,
                      color: satisfactionColor,
                      size: 65.0,
                    ),
                    Divider(
                      height: 10.0,
                      color: Colors.transparent,
                    ),
                    Text(
                      'SATISFACTION',
                      style: TextStyle(color: Colors.white, fontSize: 24.0),
                    ),
                    Text(
                      '$satisfaction',
                      style: TextStyle(
                          color: Colors.indigo,
                          fontSize: 45.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0)),
                      child: Slider(
                        activeColor: Colors.indigo,
                        inactiveColor: Colors.white,
                        value: satisfaction.toDouble(),
                        min: kMinSatisfaction,
                        max: kMaxSatisfaction,
                        onChanged: (double value) {
                          setState(() {
                            satisfaction = value.toInt();
                            satisfactionIcon =
                                listSatisfaction[satisfaction ~/ 2];
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
