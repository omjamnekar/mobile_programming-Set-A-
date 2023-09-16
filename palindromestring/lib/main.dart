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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('palindrome_98'),
      ),
      body: Container(
        height: 300,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: c,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PageRouting(c.text.toString()),
                    ));
              },
              child: Text(
                'Palindrome',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageRouting extends StatefulWidget {
  PageRouting(this.num1);

  String num1;

  @override
  State<PageRouting> createState() => _PageRoutingState();
}

class _PageRoutingState extends State<PageRouting> {
  String ans = '';
  String state = '';

  palindrome() {
    String e = '';
    String rev = '';

    setState(() {
      e = widget.num1;
      var temp = e;
      for (int i = e.length - 1; i >= 0; i--) {
        rev = rev + e[i];
      }

      ans = rev;
      if (rev == temp) {
        state = 'it is palindrome';
      } else {
        state = 'is is not palindrome';
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    palindrome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing'),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        height: 300,
        child: Center(
          child: Column(
            children: [
              Text(
                '$ans',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                '$state',
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
      ),
    );
  }
}
