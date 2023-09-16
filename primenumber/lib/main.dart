import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
  String ans = '';
  bool flag = false;
  var count = 0;
  prime() {
    setState(() {
      num s = int.tryParse(c.text.toString()) ?? 0;
      count = 0;
      for (int i = 2; i <= s; i++) {
        if (s % i == 0) {
          count++;
        }
      }
      if (count == 1)
        flag = true;
      else
        flag = false;
      ans = s.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dollar_Euros_98'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextField(
              controller: c,
              decoration: InputDecoration(
                  labelText: 'Enter a value',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 30),
                  ),
                ),
                onPressed: () {
                  prime();
                },
                child: Text(
                  'prime number',
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            height: 50,
            width: 500,
            child: Center(
              child: Text(
                flag == true
                    ? "${ans} is a prime number"
                    : "not a prime number",
                style: TextStyle(fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
