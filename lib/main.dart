import 'package:flutter/material.dart';
import 'package:my_widget/alertdialog_widget/alert_dialog_.dart';
import 'package:my_widget/animation_widget/codebase_animation_.dart';
import 'package:my_widget/animation_widget/drawingbase_animation_.dart';
import 'package:my_widget/expanded_widget/expanded_.dart';
import 'package:my_widget/wrap_Widget/wrap_.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: CodebaseAnimation_.path,
      routes: {
        CodebaseAnimation_.path: (context) => CodebaseAnimation_(),
        DrawingBaseAnimation_.path: (context) => DrawingBaseAnimation_(),
        Alert_Dialog_.path: (context) => Alert_Dialog_(),
        Expanded_.path: (context) => Expanded_(),
        Wrap_.path: (context) => Wrap_(),
      },
    );
  }
}
