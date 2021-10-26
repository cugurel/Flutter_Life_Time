import 'package:flutter/material.dart';
import 'package:life_time/calculator.dart';
import 'package:life_time/user_data.dart';

class ResultPage extends StatelessWidget {
  final UserData _userData;

  ResultPage(this._userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sonuç Sayfası:'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Center(
              child: Text(
                Calculator(_userData).calculate().round().toString(),
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: FlatButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Geri Dön'),
              )),
        ],
      ),
    );
  }
}
