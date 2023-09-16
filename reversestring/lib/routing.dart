import 'dart:math';
import 'package:flutter/material.dart';

class RoutingPage extends StatefulWidget {
  RoutingPage(this.num1);

  var num1;
  @override
  State<RoutingPage> createState() => _RoutingPageState();
}

class _RoutingPageState extends State<RoutingPage> {
  String e = '';
  String str = '';
  String r = '';
  var ans = '';

  void reverseNumber() {
    setState(() {
      e = widget.num1.toString();
      r = '';

      for (int i = e.length - 1; i >= 0; i--) {
        str = e[i];
        r = r + str;
      }

      ans = r;
    });
  }

  @override
  void initState() {
    super.initState();
    reverseNumber();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing_98'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        height: 300,
        child: Column(
          children: [
            Center(
              child: Text(
                '$ans',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
