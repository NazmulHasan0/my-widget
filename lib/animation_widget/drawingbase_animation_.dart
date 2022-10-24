// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DrawingBaseAnimation_ extends StatelessWidget {
  static const String path = 'DrawingBaseAnimation_';
  const DrawingBaseAnimation_({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawing Base Animation'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: 300,
            color: Colors.green,
            child: Lottie.network(
                'https://assets1.lottiefiles.com/datafiles/ogIQ10UnwnKiBZS/data.json'),
          ),
        ],
      ),
    );
  }
}



/*
https://rive.app/
https://lottiefiles.com/

dependencies add করতে হবে
  lottie:
  rive: ^0.9.1

  lottie
    Lottie.asset('assets/LottieLogo1.json'),
    Lottie.network('https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),
    Lottie.asset('assets/lottiefiles/angel.zip'),
*/
