// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class Wrap_ extends StatelessWidget {
  static const String path = 'Wrap_';
  const Wrap_({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap Widget"),
        centerTitle: true,
      ),
      body: Container(
        height: 200,
        width: 400,
        color: Colors.amber,
        child: Wrap(
          alignment: WrapAlignment.center, //* horizontal ভাবে center হবে
          runAlignment: WrapAlignment.center, //* vertical ভাবে center হবে
          spacing: 10, //* horizontal ভাবে space হবে
          runSpacing: 10, //* vertical ভাবে space হবে
          // verticalDirection: VerticalDirection.up, //* last এর element প্রথমে চলে আসবে
          // textDirection: TextDirection.rtl, //* element গুলো rtl/ltr ভাবে থাকবে
          // direction: Axis.horizontal, //* element গুলো vertical/horizontal ভাবে থাকবে
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Button 1')),
            ElevatedButton(onPressed: () {}, child: Text('Button 2')),
            ElevatedButton(onPressed: () {}, child: Text('Button 3')),
            ElevatedButton(onPressed: () {}, child: Text('Button 4')),
            ElevatedButton(onPressed: () {}, child: Text('Button 5')),
            ElevatedButton(onPressed: () {}, child: Text('Button 6')),
          ],
        ),
      ),
    );
  }
}


/*
Wrap(
    children: List.generate(5, (index) {
      return ElevatedButton(
        onPressed: () {},
          child: Text("Button $index"),
        );
      }),
    ),
*/   