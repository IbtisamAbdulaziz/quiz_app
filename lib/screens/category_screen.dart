import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app_ewabootcamp/screens/question_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          children: [
            categoryContainer("Programming quiz", Colors.purpleAccent, context),
            categoryContainer("History quiz", Colors.blueAccent, context),
            categoryContainer("Sport quiz", Colors.greenAccent, context),
          ],
        ),
      ),
    );
  }

  Widget categoryContainer(String quuizName, Color quizColor, context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const QuestionScreen(),
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
