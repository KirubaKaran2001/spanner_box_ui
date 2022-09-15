import 'package:flutter/material.dart';
import 'package:spanner_box_ui/constants/theme.dart';
import 'package:spanner_box_ui/spanner_ui.dart';
import 'package:spanner_box_ui/ticket_raise.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: myLightTheme,
      home: const RaiseTicket(),
      debugShowCheckedModeBanner: false,
    );
  }
}
