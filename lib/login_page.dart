import 'package:flutter/material.dart';
import 'package:login/component/button.dart';
import 'package:login/component/mytext_field.dart';
import 'package:login/sign_up.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color.fromARGB(255, 14, 39, 59), Colors.white])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 50),
                //Icon
                const Icon(
                  Icons.account_circle,
                  size: 100,
                ),
                const SizedBox(height: 50),
                //Well come back
                const Text(
                  'Welcome back',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 40,
                ),
                //user name
                MyTextField(
                  controller: usernameController,
                  hinttext: 'User Name',
                  obscuretext: false,
                ),

                const SizedBox(height: 10),
                //password
                MyTextField(
                  controller: passwordController,
                  hinttext: 'Password',
                  obscuretext: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                //forgotpassword
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //sign in button
                const SignIN(),
                const SizedBox(
                  height: 20,
                ),
                const Text('If you have no account'),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
