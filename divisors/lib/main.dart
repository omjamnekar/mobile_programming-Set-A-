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
  @override
  Widget build(BuildContext context) {
    TextEditingController c = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Divisors_98'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 300,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
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
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RoutingPage(c.text.toString()),
                      ));
                },
                child: Text(
                  'Divisors',
                ),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class RoutingPage extends StatefulWidget {
  RoutingPage(this.num1);
  String num1;

  @override
  State<RoutingPage> createState() => _RoutingPageState();
}

class _RoutingPageState extends State<RoutingPage> {
  List<int> divisor(number) {
    List<int> divisor_num = [];
    for (int i = 1; i <= number; i++) {
      if (number % i == 0) {
        divisor_num.add(i);
      }
    }

    return divisor_num;
  }

  @override
  Widget build(BuildContext context) {
    num number = int.parse(widget.num1);
    List<int> list_num = divisor(number);
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 700,
          child: Column(
            children: [
              Text(
                'numbers divided by ${number.toString()} are: ',
                style: TextStyle(fontSize: 18),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: list_num.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Text(
                        '${list_num[index]}',
                        style: TextStyle(fontSize: 20),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
