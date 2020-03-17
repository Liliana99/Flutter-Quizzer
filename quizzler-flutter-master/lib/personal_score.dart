import 'package:flutter/material.dart';

class PersonalScore extends StatelessWidget {
  const PersonalScore({
    Key key,@required this.correctAnswer, @required this.wrongAnswer
  }) : super(key: key);
  final int correctAnswer;
  final int wrongAnswer;
  

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Card(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 8, 0),
                child: Text.rich(
                  TextSpan(
                    text: 'Correct answers',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                    ),
                    children: <TextSpan>[
                      new TextSpan(
                        text: '   $correctAnswer',
                        style: new TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 8, 0),
                child: Text.rich(
                  TextSpan(
                    text: 'Wrong answers',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                    ),
                    children: <TextSpan>[
                      new TextSpan(
                        text: '   $wrongAnswer',
                        style: new TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          )),
        ),
      ),
    );
  }
}
