// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:login/login_page.dart';

class WelCome extends StatelessWidget {
  const WelCome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const FlutterW(),
    );
  }
}

class FlutterW extends StatefulWidget {
  const FlutterW({super.key});

  @override
  State<FlutterW> createState() => _FlutterWState();
}

class _FlutterWState extends State<FlutterW> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Flutter'),
      ),
      body: const Button(),
      bottomNavigationBar: NavigationBar(destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.dashboard), label: 'Dashboard'),
      ]),
    );
  }
}

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
          },
          child: const Text('Back to Login page')),
    );
  }
}
