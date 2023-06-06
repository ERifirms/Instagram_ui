import 'package:flutter/material.dart';

class infoItems extends StatelessWidget {
  infoItems({required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(title),
      ],
    );
  }
}
