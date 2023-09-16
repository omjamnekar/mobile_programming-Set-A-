import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Armstrong',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController c = TextEditingController();

  num n = 0, digit = 0, s = 0;
  var ans = '';

  armstrong() {
    setState(() {
      n = num.parse(c.text);
      int len = c.text.length;
      while (n > 0) {
        digit = n % 10;
        s += fact(digit);
        n ~/= 10;
      }

      if (s == num.parse(c.text)) {
        ans = 'Strong Number';
      } else {
        ans = 'Not an Strong Number';
      }
      s = 0;
    });
  }

  fact(n) {
    if (n == 0) {
      return 1;
    } else {
      return fact(n - 1) * n;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Armstrong_98')),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: c,
                decoration: InputDecoration(
                  labelText: 'Enter a number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Text(
              '$ans',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                armstrong();
              },
              child: Text(
                'Strong number',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
