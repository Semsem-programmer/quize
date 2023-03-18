import 'package:flutter/material.dart';

import 'question_page.dart';

class StarterPage extends StatelessWidget {
  const StarterPage({super.key});

  static String get routePage => 'starter_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            alignment: Alignment.center,
            color: const Color.fromRGBO(255, 255, 204, 1.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  QuestionPage.routePage
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(
                    vertical: 5.0,
                    horizontal: 50.0,
                  ),
                ),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              child: const Text('ابدأ'),
            ),
          ),
        ],
      ),
    );
  }
}
