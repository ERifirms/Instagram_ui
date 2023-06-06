import 'package:flutter/material.dart';

class TapItems extends StatelessWidget {
  final bool active;
  final IconData icon;
  TapItems(this.icon, this.active);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(
            color: active == true ? Colors.black : Colors.white,
            width: 1,
          ),
        )),
        child: Icon(icon),
      ),
    );
  }
}
