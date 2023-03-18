import 'package:flutter/material.dart';

import 'question_page.dart';
import 'result_data.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  static String get routePage => "result_page";

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as ResultData;

    var correctedResult = args.correctedResult;
    String imageString = (correctedResult)? 'assests/images/true.jpg': 'assests/images/false.jpg';

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: InkWell(
          onTap: (){
            if (correctedResult) {
              Navigator.of(context).pushReplacementNamed(
                QuestionPage.routePage
              );
            } else {
              Navigator.of(context).pop();
            }
          },
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
