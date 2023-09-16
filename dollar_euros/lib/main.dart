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

  dollar() {
    var res = 0;
    setState(() {
      num s = int.parse(c.text.toString());

      res = (s * 80) as int;
    });

    ans = res.toString();
  }

  euros() {
    var res = 0;
    setState(() {
      num s = int.parse(c.text.toString());

      res = (s * 90) as int;
    });

    ans = res.toString();
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
                    dollar();
                  },
                  child: Text(
                    'Dollar',
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 30),
                    ),
                  ),
                  onPressed: () {
                    euros();
                  },
                  child: Text(
                    'Euros',
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
                '${ans}',
                style: TextStyle(fontSize: 20),
              )),
            )
          ],
        ));
  }
}
