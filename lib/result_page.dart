import 'package:flutter/material.dart';

import 'question_page.dart';
import 'result_data.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  static String get routePage => "result_page";

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ResultData;

    var correctedResult = args.correctedResult;
    String imageString = (correctedResult)
        ? 'assests/images/true.jpg'
        : 'assests/images/false.jpg';

    Future.delayed(
      const Duration(seconds: 2),
      () {
        if (mounted) {
          Navigator.of(context).pop();
        }
      },
    );

    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Container(
          alignment: Alignment.center,
          child: Image.asset(
            imageString,
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
