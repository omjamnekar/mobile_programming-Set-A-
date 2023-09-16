import 'dart:math';

import 'package:flutter/material.dart';

class RoutingPage extends StatefulWidget {
  RoutingPage(this.num1);

  var num1;
  @override
  State<RoutingPage> createState() => _RoutingPageState();
}

class _RoutingPageState extends State<RoutingPage> {
  var e = 0;
  num sum = 0;
  var ans = '';
  sum1() {
    setState(() {
      num rev = 0;
      e = int.parse(widget.num1.toString());
      while (e > 0) {
        sum = e % 10;
        rev = rev * 10 + sum;
        e = e ~/ 10;
      }
      ans = rev.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    sum1();
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
