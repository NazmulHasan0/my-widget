// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

import 'alert_dialog_page_.dart';

class Alert_Dialog_ extends StatelessWidget {
  static const String path = 'Alert_Dialog_';
  const Alert_Dialog_({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            simpleAlertDialog(context),
            SizedBox(height: 15),
            customAlertDialog(context),
          ],
        ),
      ),
    );
  }
}

Widget simpleAlertDialog(context) {
  return ElevatedButton(
    onPressed: () {
      showDialog(
        barrierDismissible:
            false, //* Alert Dialog এর বাইরে click করলে Alert Dilog ভানিস হবে না
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("This is Alert Dialog"),
            content: Text("You can not access this file"),
            actions: [
              //* Alert Dialog এর ভিতর যে Button গুলো থাকবে সেইগুলো action এ যাবে
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Alert_Dialog_Page_()),
                  );
                },
                child: Text("Yes"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                    "No"), //* No Button Press করলে AlertDialog থেকে বের হয়ে আসবে
              ),
            ],
          );
        },
      );
    },
    child: Text("Simple Alert Dialog"),
  );
}

Widget customAlertDialog(context) {
  return ElevatedButton(
    onPressed: () {
      showDialog(
        // barrierDismissible: false, //* Alert Dialog এর বাইরে click করলে Alert Dilog ভানিস হবে না
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: Stack(
              alignment: Alignment.topCenter,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 250,
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      SizedBox(height: 50),
                      Text(
                        'Warning !!!',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text('You can not acess this file',
                          style: TextStyle(fontSize: 20)),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('OK'),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: -50,
                  child: CircleAvatar(
                    radius: 50,
                    child: Icon(Icons.flag, size: 50),
                  ),
                )
              ],
            ),
          );
        },
      );
    },
    child: Text("Custom Alert Dialog"),
  );
}
