import 'package:flutter/material.dart';

Stack Profile_picture() {
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.red, Colors.amber],
          ),
        ),
      ),
      Container(
        width: 65,
        height: 65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          image: DecorationImage(
              image: NetworkImage("https://picsum.photos/200/200")),
          border: Border.all(
            color: Colors.white,
            width: 3,
          ),
          color: Colors.grey,
        ),
      ),
    ],
  );
}
