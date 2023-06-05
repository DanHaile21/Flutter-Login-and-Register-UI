import 'package:flutter/material.dart';
import 'package:login/Welcome_Screen.dart';

class SignIN extends StatelessWidget {
  const SignIN({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FloatingActionButton.extended(
          label: const Text('LOGIN'),
          backgroundColor: Colors.amber,
          icon: const Icon(
            Icons.login,
            size: 24.0,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const WelCome()));
          },
        ),
      ],
    );
  }
}
