import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app_ewabootcamp/screens/score_screen.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40, bottom: 20, left: 12, right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Question Number: ",
                  style: TextStyle(fontSize: 20),
                ),
                Text("2/20",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurpleAccent)),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Text("What is the capital of Saudi Arabia?",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent)),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const ScoreScreen(),
                        ),
                      );
                    },
                    child: Text("Cairo"))),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                child:
                    ElevatedButton(onPressed: () {}, child: Text("Tunisia"))),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(onPressed: () {}, child: Text("Riyadh"))),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(onPressed: () {}, child: Text("Doha"))),
          ],
        ),
      ),
    );
  }
}
