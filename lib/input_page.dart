import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'IconGender.dart';
import 'MyContainer.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String? chosenGender;
  double smoken = 0.0;
  double spor = 0.0;
  int weight = 170;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            'Boy',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            '$weight',
                            style: TextStyle(
                                color: Colors.lightBlue,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ButtonTheme(
                              minWidth: 36,
                              child: OutlineButton(
                                  borderSide:
                                  BorderSide(color:Colors.lightBlue),
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    size: 10,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                    print('üstteki buton');
                                  }),
                            ),
                            ButtonTheme(
                              minWidth: 36,
                              child: OutlineButton(
                                borderSide:
                                  BorderSide(color:Colors.lightBlue),
                                  child: Icon(
                                    FontAwesomeIcons.minus,
                                    size: 10,
                                  ),
                                  onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                    print('alttaki buton');
                                  }),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Haftada kaç gün yapıyorsunuz?",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${spor.round()}',
                    style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Slider(
                    min: 0,
                    max: 7,
                    value: spor,
                    onChanged: (double newValue) {
                      setState(() {
                        spor = newValue;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Günde kaç sigara içiyorsunuz?",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${smoken.round()}',
                    style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Slider(
                    min: 0,
                    max: 30,
                    value: smoken,
                    onChanged: (double newValue) {
                      setState(() {
                        smoken = newValue;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    onPress: () {
                      setState(() {
                        chosenGender = 'Kadın';
                      });
                    },
                    color: chosenGender == 'Kadın' ? Colors.pink : Colors.white,
                    child: IconGender(
                      gender: "Kadın",
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    onPress: () {
                      setState(() {
                        chosenGender = 'Erkek';
                      });
                    },
                    color: chosenGender == 'Erkek' ? Colors.blue : Colors.white,
                    child: IconGender(
                      gender: "Erkek",
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
