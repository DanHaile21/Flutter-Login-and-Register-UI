import 'package:flutter/material.dart';
import 'package:login/component/mytext_field.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue, Color.fromARGB(255, 143, 46, 46)])),
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Register page'),
            ),
            backgroundColor: Colors.transparent,
            body: SafeArea(
                child: Center(
                    child: Column(children: [
              const SizedBox(height: 50),
              MyTextField(
                controller: usernameController,
                hinttext: 'First Name',
                obscuretext: false,
              ),
              const SizedBox(height: 20),
              MyTextField(
                controller: usernameController,
                hinttext: 'Last Name',
                obscuretext: false,
              ),
              const SizedBox(height: 20),
              MyTextField(
                controller: usernameController,
                hinttext: 'Email',
                obscuretext: false,
              ),
              const SizedBox(height: 20),
              MyTextField(
                controller: usernameController,
                hinttext: 'password',
                obscuretext: true,
              ),
              const SizedBox(height: 20),
              MyTextField(
                controller: passwordController,
                hinttext: 'Confirm password',
                obscuretext: true,
              ),
              const SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: const Text('Register')),
              const SizedBox(
                height: 20,
              ),
              const Text('If you have account already please '),
              TextButton(onPressed: () {}, child: const Text('LOGIN'))
            ])))));
  }
}
