import 'package:flutter/material.dart';

class Cloud extends StatefulWidget {
  @override
  _CloudState createState() => _CloudState();
}

class _CloudState extends State<Cloud> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text(
        "3",style: TextStyle(fontSize: 30),
      ),
    );
  }
}