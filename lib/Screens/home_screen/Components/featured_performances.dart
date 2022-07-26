import 'package:flutter/material.dart';

class FeaturedPerformances extends StatelessWidget {
  final String image;
  final String title;
  const FeaturedPerformances(
      {Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            image,
            height: MediaQuery.of(context).size.width * 0.3,
            fit: BoxFit.fitHeight,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                color: Colors.pink.shade300,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
