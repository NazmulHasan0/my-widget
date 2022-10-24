// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class CodebaseAnimation_ extends StatefulWidget {
  static const String path = 'CodebaseAnimation_';
  const CodebaseAnimation_({super.key});

  @override
  State<CodebaseAnimation_> createState() => _CodebaseAnimation_State();
}

class _CodebaseAnimation_State extends State<CodebaseAnimation_> {
//
  double _height = 100;
  double _width = 200;
  Color _color = Colors.blue;
  void animatedContainer() {
    setState(() {
      _height = 200;
      _width = 300;
      _color = Colors.black;
    });
  }

  //
  //
  double _fontSize = 25;
  Color _textColor = Colors.purple;
  //
  //
  double _right = 0;
  //
  //
  double _opacity = 1;
  //
  //
  Alignment _alignment = Alignment.centerRight;
  //
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Code-Base Animation"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              height: _height,
              width: _width,
              duration: Duration(seconds: 3),
              curve: Curves.bounceInOut,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: BorderRadius.circular(20),
              ),
              onEnd: () {
                //* এই method টা চলতেই থাকবে
                setState(() {
                  _height = _height == 200 ? 100 : 200;
                  _width = _width == 300 ? 200 : 300;
                  _color = _color == Colors.black ? Colors.blue : Colors.black;
                });
              },
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  animatedContainer();
                });
              },
              child: Text("AnimatedContainer"),
            ),
            //*
            SizedBox(height: 10),
            AnimatedDefaultTextStyle(
              child: Text("This is Animated Default TextStyle"),
              style: TextStyle(
                fontSize: _fontSize,
                color: _textColor,
              ),
              duration: Duration(seconds: 2),
              curve: Curves.easeInCubic,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _fontSize = 30;
                });
              },
              child: Text("Text Button"),
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              width: 300,
              color: Colors.purple,
              child: Stack(
                children: [
                  AnimatedPositioned(
                    right: _right,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _right = 50;
                        });
                      },
                      child: Text("Button"),
                    ),
                    duration: Duration(seconds: 3),
                    curve: Curves.bounceInOut,
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 2),
              child: Card(
                child: ListTile(
                  title: Text("This is Animated Opacity"),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _opacity = 0.2;
                });
              },
              child: Text("Changed Opacity"),
            ),
            SizedBox(height: 10),
            AnimatedAlign(
              alignment: _alignment,
              duration: Duration(seconds: 2),
              child: Text("Animated Align"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _alignment = Alignment.centerLeft;
                });
              },
              child: Text("Changed Align"),
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
