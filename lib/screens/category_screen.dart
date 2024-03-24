import 'package:flutter/material.dart';
import 'package:quiz_app_ewabootcamp/data/app_question_and_answers.dart';
import 'package:quiz_app_ewabootcamp/screens/question_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          children: [
            categoryContainer("Programming quiz", Colors.purpleAccent, context,
                programmingQuizQuestionsAndAnswers),
            categoryContainer("History quiz", Colors.blueAccent, context,
                historyQuizQuestionsAndAnswers),
            categoryContainer("Sport quiz", Colors.greenAccent, context,
                sportsQuizQuestionsAndAnswers),
          ],
        ),
      ),
    );
  }

  Widget categoryContainer(
      String quuizName, Color quizColor, context, List qList) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => QuestionScreen(
                  questionsAndAnswersList: qList,
                ),
              ));
        },
        child: Container(
          child: Center(
              child: Text(
            quuizName,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
          color: quizColor,
        ),
      ),
    );
  }
}
