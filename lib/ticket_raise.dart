import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:spanner_box_ui/constants/textStyle.dart';
import 'package:ticket_widget/ticket_widget.dart';


class SpannerBox extends StatefulWidget {
  const SpannerBox({super.key});

  @override
  State<SpannerBox> createState() => _SpannerBoxState();
}

class _SpannerBoxState extends State<SpannerBox> {
  bool wheelsValue = false;
  bool nutsAndBoltsValue = false;
  bool meshValue = false;
  bool rustValue = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Color(0xff282828),
          ),
          title: Text(
            'Raise Ticket',
            style: appBarTitleStyle,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'Anomalies',
                style: formHeaderTextStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Please mark what\'s wrong and raise a ticket.',
                style: formSecondaryTextStyle,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    activeColor: Colors.transparent,
                    checkColor: const Color(0xffff3838),
                    value: wheelsValue,
                    onChanged: (bool? value) {
                      setState(() {
                        wheelsValue = value!;
                      });
                    },
                  ),
                  Text(
                    'Wheels not working.',
                    style: formPrimaryTextStyle,
                  ),
                ],
              ),
Row(
                children: <Widget>[
                  Checkbox(
                    activeColor: Colors.transparent,
                    checkColor: const Color(0xffff3838),
                    value: nutsAndBoltsValue,
                    onChanged: (bool? value) {
                      setState(() {
                        nutsAndBoltsValue = value!;
                      });
                    },
                  ),
                  Text(
                    'Nuts and bolts are loose.',
                    style: formPrimaryTextStyle,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    activeColor: Colors.transparent,
                    checkColor: const Color(0xffff3838),
                    value: meshValue,
                    onChanged: (bool? value) {
                      setState(() {
                        meshValue = value!;
                      });
                    },
                  ),
                  Text(
                    'Meshing is not okay.',
                    style: formPrimaryTextStyle,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    activeColor: Colors.transparent,
                    checkColor: const Color(0xffff3838),
                    value: rustValue,
                    onChanged: (bool? value) {
                      setState(() {
                        rustValue = value!;
                      });
                    },
                  ),
                  Text(
                    'The trolley is subjected to rust.',
                    style: formPrimaryTextStyle,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Trolley Id : ',
                            style: cardHeaderTextStyle,
                          ),
                          Text(
                            '63172a1db870f87540b3a943',
                            style: cardPrimaryTextStyle,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        DateFormat.yMMMEd()
                            .add_jms()
                            .format(DateTime.now())
                            .toString(),
                        style: cardSecondaryTextStyle,
                      )
                    ],
                  ),
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Align(
                alignment: Alignment.center,
                child: TicketWidget(
                  color: const Color(0xffff3838),
                  width: 200,
                  height: 55,
                  isCornerRounded: true,
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Text(
                      'Raise Ticket',
                      style: cardHeaderTextStyle.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

