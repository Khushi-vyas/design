import 'package:flutter/material.dart';

class ClanMembers extends StatelessWidget {
  final String image;
  final String title;
  const ClanMembers({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(image),
          radius: 24,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: Colors.pink.shade300,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
