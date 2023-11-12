import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "my app",
        home: HomePage(),
        theme: ThemeData(
          primarySwatch: Colors.lightGreen,
          brightness: Brightness.light,
        ));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  String mytext = "Hello World";
  void change() {
    setState(() {
      if (mytext.startsWith("H")) {
        mytext = "Welcome to the World of Flutter";
      } else {
        mytext = "Hello World";
      }
    });
  }

  Widget _bodywidget() {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              mytext,
              style: new TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 25.0,
                  fontFamily: 'Times new Roman'),
            ),
          ],
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          "My Application",
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Center(child: _bodywidget()),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: change,
        backgroundColor: Colors.red,
      ),
    );
  }
}
