import 'package:flutter/material.dart';
import 'package:quiz_app_ewabootcamp/screens/splash_screen.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Good Job Ibtisam, You've completed the quiz and your score is: ",
              textAlign: TextAlign.center,
            ),
            Text(
              "18/20",
              style: TextStyle(fontSize: 20, color: Colors.deepPurpleAccent),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => SplashScreen(),
                    ),
                  );
                },
                child: Text("Play again"))
          ],
        ),
      ),
    );
  }
}
