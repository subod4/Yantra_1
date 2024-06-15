// TODO Implement this library.
import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  final String title;

  ButtonPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
