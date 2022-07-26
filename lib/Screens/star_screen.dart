import 'package:flutter/material.dart';

class StarScreen extends StatelessWidget {
  const StarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Star Screen",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
