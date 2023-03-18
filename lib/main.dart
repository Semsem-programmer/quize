import 'package:flutter/material.dart';

import 'question_page.dart';
import 'result_page.dart';
import 'starter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'الحروف',
      home: const StarterPage(),
      theme: ThemeData(
        fontFamily: "NotoSans",
        buttonTheme: const ButtonThemeData(
          padding: EdgeInsets.symmetric(
            vertical: 5.0,
            horizontal: 50.0,
          ),
          buttonColor: Colors.blue,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      routes: {
        StarterPage.routePage: (context) => const StarterPage(),
        QuestionPage.routePage: (context) => const QuestionPage(),
        ResultPage.routePage: (context) => const ResultPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
