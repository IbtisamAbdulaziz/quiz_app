import 'package:flutter/material.dart';
import 'package:quiz_app_ewabootcamp/screens/category_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mySize = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Image.asset(
                  "assets/login_image.png",
                  height: 180,
                  width: 200,
                ),
                SizedBox(
                  height: 0,
                ),
                Text("Hello",
                    style:
                        TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                Text(
                  "Welcome To Quiz App \n Please login to start the game",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 50,
                  child: TextField(
                      decoration: InputDecoration(
                    label: Text("User name", style: TextStyle(fontSize: 17)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.purple),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.purple),
                        borderRadius: BorderRadius.circular(15)),
                  )),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 50,
                  child: TextField(
                      decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    label: Text("Password", style: TextStyle(fontSize: 17)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.purple),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.purple),
                        borderRadius: BorderRadius.circular(15)),
                  )),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                    width: mySize.width,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const CategoryScreen(),
                              ));
                        },
                        child: Text("Login", style: TextStyle(fontSize: 20)))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/facebook_icon.png",
                      height: 50,
                      width: 50,
                    ),
                    Image.asset(
                      "assets/google_icon.png",
                      height: 50,
                      width: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Image.asset(
                        "assets/linkedin_icon.png",
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
