import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/question.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenSate();
  }
}

class _QuestionScreenSate extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String answer) {
    print('hitt');
    widget.onSelectAnswer(answer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.text,
                style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 229, 145, 223),
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffled().map((ans) {
              return AnswerButton(
                  answerText: ans,
                  onTap: () {
                    answerQuestion(ans);
                  });
            }),
          ],
        ),
      ),
    );
  }
}
