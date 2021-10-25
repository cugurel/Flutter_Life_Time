import 'package:flutter/material.dart';

class IconGender extends StatelessWidget {
  final IconData icon;
  final String gender;

  IconGender({required this.gender, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 50,
          color: Colors.black54,
        ),
        SizedBox(height: 10),
        Text(
          gender,
          style: TextStyle(
              color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
