import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  sum(40,50);
}

void sum(int a,[int b=40]){
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Work',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const MyHomePage(),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('.....SPORTS STORE..... ',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
          backgroundColor: Color.fromARGB(255, 119, 176, 209),
          foregroundColor: Color.fromARGB(193, 216, 39, 39),
        ),
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                  width: 1000,
                  height: 30,
                  color: Color.fromRGBO(18, 15, 209, 0.906),
                  child: Center(
                      child: Text(
                    'Welcom to new jurney',
                    style: TextStyle(color: Color.fromARGB(182, 0, 0, 0)),
                  ))),
              ElevatedButton(
                  onPressed: () {
                    print("object");
                  },
                  child: Text('SignUp')),
              ElevatedButton(
                  onPressed: () {
                    print("object");
                  },
                  child: Text('Login'))
            ],
          ),
        ));
  }
}
