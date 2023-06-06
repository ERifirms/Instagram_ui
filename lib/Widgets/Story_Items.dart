import 'package:flutter/material.dart';

class Story_Items extends StatelessWidget {
  final String title;

  Story_Items(this.title);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey,
                ),
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey[300],
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  image: DecorationImage(
                    image: NetworkImage("https://picsum.photos/200/200"),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Text(title)
        ],
      ),
    );
  }
}
