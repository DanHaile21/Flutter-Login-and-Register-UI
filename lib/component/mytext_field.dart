import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hinttext;
  final bool obscuretext;
  const MyTextField(
      {super.key,
      required this.controller,
      required this.hinttext,
      required this.obscuretext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: TextField(
        controller: controller,
        obscureText: obscuretext,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white30)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white30)),
          fillColor: Colors.white,
          filled: true,
          hintText: hinttext,
        ),
      ),
    );
  }
}
