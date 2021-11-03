import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String quesitonText;

  Questions(this.quesitonText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(25),
      child: Text(
        quesitonText,
        style: TextStyle(fontSize: 28, color: Colors.black),
        textAlign: TextAlign.center,
      ),
    );
  }
}