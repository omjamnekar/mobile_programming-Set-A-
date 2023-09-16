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
      title: 'Calculater_98',
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
  TextEditingController c1 = TextEditingController();
  TextEditingController c2 = TextEditingController();
  var res, n2, n1, ans = '';

  add1() {
    setState(() {
      n1 = int.parse(c1.text);
      n2 = int.parse(c2.text);
      res = n1 + n2;
      ans = res.toString();
    });
  }

  sub1() {
    setState(() {
      n1 = int.parse(c1.text);
      n2 = int.parse(c2.text);
      res = n1 - n2;
      ans = res.toString();
    });
  }

  div1() {
    setState(() {
      n1 = int.parse(c1.text);
      n2 = int.parse(c2.text);
      res = n1 / n2;
      ans = res.toString();
    });
  }

  mul1() {
    setState(() {
      n1 = int.parse(c1.text);
      n2 = int.parse(c2.text);
      res = n1 * n2;
      ans = res.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Calculater_98')
      ),
      body: Container(
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: c1,
                decoration: InputDecoration(
                  labelText: 'Enter a number1',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: c2,
                decoration: InputDecoration(
                  labelText: 'Enter a number2',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.green, width: 2),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.red, width: 2),
                  ),
                ),
              ),
            ),
            Text(
              '$ans',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    add1();
                  },
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    sub1();
                  },
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    div1();
                  },
                  child: Text(
                    '/',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    mul1();
                  },
                  child: Text(
                    '*',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
