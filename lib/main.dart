import 'package:flutter/material.dart';

void main() => runApp(CrunchApp());

class CrunchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'SourceSansPro'),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          SafeArea(
            child: Container(
              child: Row(
                children: <Widget>[
                  Image.asset('images/Logo.png'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Crunch',
                      style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
          Image.asset('images/man.png'),
          SizedBox(height: 10),
          Text(
            "WE'RE",
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.pink[100]),
          ),
          Text(
            "COMING",
            style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
          ),
          Text(
            "SOON",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
                'Hello followers!.We are currently building our new fashion Blog.Add your email below to Subscribe and stay update on our launch deals',
                style: TextStyle(
                  fontSize: 17.0,
                )),
          ),
          SizedBox(height: 20),
          Container(
            width: 250,
            height: 50,
            child: TextFormField(
              decoration: new InputDecoration(
                labelText: "Email Address...",
                fillColor: Colors.white,
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
