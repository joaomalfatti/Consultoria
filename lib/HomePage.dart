import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("ATM Consultoria",
        style: TextStyle(
          color: Colors.white
          ),
        ),
        backgroundColor: Colors.green,
      ) ,
      body: Container(
        padding: EdgeInsets.all(16),

      ),
    );
  }
}
