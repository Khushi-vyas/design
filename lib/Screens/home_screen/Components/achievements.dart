import 'package:flutter/material.dart';

class Achievements extends StatelessWidget {
  const Achievements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                "Current League",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.pink.shade300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Image.asset("assets/shield.jpg"),
            ),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                "League Ranking",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.pink.shade300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                "11th",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.yellow.shade700,
                ),
              ),
            ),
          ],
        ),
        TableRow(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              "Experience",
              style: TextStyle(
                fontSize: 20,
                color: Colors.pink.shade300,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              "2000 xp",
              style: TextStyle(
                fontSize: 20,
                color: Colors.yellow.shade700,
              ),
            ),
          ),
        ]),
        TableRow(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              "# of wins",
              style: TextStyle(
                fontSize: 20,
                color: Colors.pink.shade300,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              "3",
              style: TextStyle(
                fontSize: 20,
                color: Colors.yellow.shade700,
              ),
            ),
          ),
        ]),
      ],
    );
  }
}
