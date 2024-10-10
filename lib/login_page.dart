import 'package:chatbot/components/my_button.dart';
import 'package:chatbot/components/my_textfield.dart';
import 'package:chatbot/components/square_tile.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void SignInUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  //logo
                  const Icon(
                    Icons.lock,
                    size: 100,
                  ),

                  const SizedBox(
                    height: 50,
                  ),
                  //welcome back
                  Text(
                    "Welcome back you've been missed",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(
                    height: 25,
                  ),
                  //username field
                  MyTextfield(
                    controller: usernameController,
                    hintText: "Username",
                    obscureText: false,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //password field
                  MyTextfield(
                    controller: passwordController,
                    hintText: "Password",
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //forgot password
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot Password",
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  //sign in button
                  MyButton(
                    onTap: SignInUser,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  //or continue with
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
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "Or Continue with",
                            style: TextStyle(
                              color: Colors.grey[700],
                            ),
                          ),
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
                    height: 30,
                  ),
                  //google + apple sign in
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //google button
                      SquareTile(imagePath: "lib/images/google.png"),

                      const SizedBox(width: 10),
                      //apple button
                      SquareTile(imagePath: "lib/images/apple.png"),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  //not a member? Register

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Not a member? ",
                        style: TextStyle(
                          color: Colors.grey[700],
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Register now",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
