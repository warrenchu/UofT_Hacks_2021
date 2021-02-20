import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Questionnaire extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Create the widget context
    return MaterialApp(
      title: "Questionnaire",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: QuestionnairePage(title: 'Personal Questionnaire'),
    );
  }
}

class QuestionnairePage extends StatefulWidget {
  QuestionnairePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _QuestionnairePageState1 createState() => _QuestionnairePageState1();
}

final TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

// Creates Button Template
