import 'package:flutter/material.dart';
import 'package:spanner_box_ui/constants/textStyle.dart';

class SpannerBox extends StatefulWidget {
  const SpannerBox({Key? key}) : super(key: key);

  @override
  State<SpannerBox> createState() => _SpannerBoxState();
}

class _SpannerBoxState extends State<SpannerBox> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Color(0xff282828),
          ),
          title: Text(
            'Trolley Specifications',
            style: appBarTitleStyle,
          ),
        ),
        body: ListView.builder(
          itemCount: 12,
          itemBuilder: (BuildContext context, int index) {
            Color getColor() {
              if (index == 0 || index == 4) {
                return Colors.yellow.withOpacity(0.9);
              } else if (index == 2 || index == 5 || index == 9) {
                return Colors.red;
              } else {
                return Colors.green;
              }
            }

            String getTrolleyStatus() {
              if (index == 0 || index == 4) {
                return 'Deteriorating';
              } else if (index == 2 || index == 5 || index == 9) {
                return 'Faulty';
              } else {
                return 'Excellent';
              }
            }

            return Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                color: getColor(),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                '( ${getTrolleyStatus()} )',
                                style: cardSecondaryTextStyle,
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 10.0,
                              top: 10,
                              bottom: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Qr ID',
                                  style: cardHeaderTextStyle,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '63172a1db870f87540b3a943',
                                      style: cardSecondaryTextStyle,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
