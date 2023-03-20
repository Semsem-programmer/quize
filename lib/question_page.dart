import 'package:flutter/material.dart';

import 'image_card.dart';
import 'letter_card.dart';
import 'question.dart';
import 'questions.dart';
import 'randoms.dart';
import 'result_data.dart';
import 'result_page.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  static String get routePage => 'question_page';

  @override
  QuestionPageState createState() => QuestionPageState();
}

class QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    List<Question> questions = Questions.questions;

    int questionNumber = Randoms.getRandomIntFromTo(0, questions.length - 1);
    int falseChoice = Randoms.getRandomIntFromTo(0, questions.length - 1);
    while (falseChoice == questionNumber) {
      falseChoice = Randoms.getRandomIntFromTo(0, questions.length - 1);
    }

    int firstChoice = Randoms.getRandomFromList([questionNumber, falseChoice]);
    int secondChoice =
        (firstChoice == questionNumber) ? falseChoice : questionNumber;

    void showResult(bool correctedAnswer) {
      Navigator.of(context).pushNamed(
        ResultPage.routePage,
        arguments: ResultData(correctedAnswer),
      );
    }

    void _showNextTrue() {
      try {
        setState(() {});
      } catch (e) {
        print('error is: $e');
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('الأسئلة'),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ImageCard(
                imageString: questions[questionNumber].imageString,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      if (firstChoice == questionNumber) {
                        showResult(true);
                        Future.delayed(
                          const Duration(milliseconds: 500),
                          _showNextTrue,
                        );
                      } else {
                        showResult(false);
                      }
                    },
                    child: LetterCard(
                      color: Colors.white,
                      letter: questions[firstChoice].letter,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (secondChoice == questionNumber) {
                        showResult(true);
                        Future.delayed(
                          const Duration(milliseconds: 500),
                          _showNextTrue,
                        );
                      } else {
                        showResult(false);
                      }
                    },
                    child: LetterCard(
                      color: Colors.white,
                      letter: questions[secondChoice].letter,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
