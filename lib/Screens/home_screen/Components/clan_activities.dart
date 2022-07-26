import 'package:flutter/material.dart';

class ClanActivities extends StatelessWidget {
  final String title;
  const ClanActivities({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          "assets/background.jpg",
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
