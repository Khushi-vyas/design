import 'package:flutter/material.dart';

class SeeMoreButton extends StatelessWidget {
  final Function onPress;
  const SeeMoreButton({Key? key, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: onPress(),
        child: Text(
          "See More",
          style: TextStyle(
            color: Colors.yellow.shade700,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
