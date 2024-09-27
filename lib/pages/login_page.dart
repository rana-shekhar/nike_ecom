import 'package:flutter/material.dart';
import 'package:nike/components/my_button.dart';
import 'package:nike/components/my_textfield.dart';

import 'package:nike/pages/intro_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 50),
                Image.asset(
                  'assets/images/test.png',
                  height: 150,
                  width: 200,
                ),
                const SizedBox(height: 25),
                Text(
                  "Welcome back you've been missed!",
                  style: TextStyle(color: Colors.grey[700], fontSize: 16),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: MyTextField(
                    controller: usernameController,
                    hintText: "Username",
                    obscureText: false,
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: MyTextField(
                    controller: passwordController,
                    hintText: "Password",
                    obscureText: true,
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forgot Password?"),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                MyButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const IntroPage()), // Navigate to IntroPage
                    );
                  },
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Center the column's content
                    crossAxisAlignment: CrossAxisAlignment
                        .center, // Align content to center horizontally
                    children: [
const SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text('or continue with',
                              style: TextStyle(color: Colors.grey[700]),),
                            ),
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                          height:
                              20), // Add space between the text and the row of images
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Center the images horizontally
                        children: [
                          Image.asset(
                            'assets/images/google.png',
                            height: 40,
                            width: 40,
                          ),
                          const SizedBox(
                              width: 20), // Add space between the images

                          Image.asset(
                            'assets/images/apple.png',
                            height: 40,
                            width: 40,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
