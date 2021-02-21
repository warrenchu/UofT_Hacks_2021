import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'maingame.dart';

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
buildButton(buildContext, buildClick, buildText) {
  final tempButton = Material(
    elevation: 6.0,
    borderRadius: BorderRadius.circular(3.0),
    color: Color(0xff01A0C7),
    child: MaterialButton(
      minWidth: MediaQuery.of(buildContext).size.width,
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: () {
        Navigator.push(
          buildContext,
          MaterialPageRoute(builder: (context) => buildClick),
        );
      },
      child: Text(buildText,
          textAlign: TextAlign.center,
          style:
              style.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
    ),
  );

  return tempButton;
}

// TextField Template
buildTextField() {
  final tempField = TextField(
    obscureText: false,
    style: style,
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Round to the Nearest Dollar",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    keyboardType: TextInputType.number,
    inputFormatters: <TextInputFormatter>[
      FilteringTextInputFormatter.digitsOnly
    ],
  );

  return tempField;
}

// Scaffold Template
buildScaffold(appBarTitle, givenChildren){
  final tempScaffold = Scaffold(
      appBar: AppBar(title: Text(appBarTitle)),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: givenChildren,
            ),
          ),
        ),
      ),
    );
  return tempScaffold;
}

class _QuestionnairePageState1 extends State<QuestionnairePage> {
  @override
  Widget build(BuildContext context) {
    // card number
    final question1a1 =
        buildButton(context, _QuestionnairePageState2(), "Salaried");
    final question1a2 = buildButton(
        context, _QuestionnairePageState2(), "Freelance / Contract");
    final question1a3 =
        buildButton(context, _QuestionnairePageState2(), "Hourly Wage");

    final q1Children = <Widget>[
                SizedBox(
                    height: 50.0,
                    child: Text("What type of work do you do?",
                        textScaleFactor: 1.7,
                        textDirection: TextDirection.ltr)),
                SizedBox(height: 15.0),
                question1a1,
                SizedBox(height: 15.0),
                question1a2,
                SizedBox(height: 15.0),
                question1a3,
              ];
    return buildScaffold('Personal Info: Work', q1Children);
  }
}

class _QuestionnairePageState2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final question2a1 =
        buildButton(context, _QuestionnairePageState3(), "Weekly");
    final question2a2 =
        buildButton(context, _QuestionnairePageState3(), "Biweekly");
    final question2a3 =
        buildButton(context, _QuestionnairePageState3(), "Intermittently");

    final q2Children = <Widget>[
                SizedBox(
                    height: 50.0,
                    child: Text("How often do you get paid?",
                        textScaleFactor: 1.7,
                        textDirection: TextDirection.ltr)),
                SizedBox(height: 45.0),
                question2a1,
                SizedBox(height: 15.0),
                question2a2,
                SizedBox(height: 15.0),
                question2a3
              ];
    return buildScaffold('Personal Info: Pay Frequency', q2Children);
  }
}

class _QuestionnairePageState3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final question3 = buildTextField();

    final q3Children = <Widget>[
                SizedBox(
                    height: 70.0,
                    child: Text(
                        "How Much Do You Want To Save For Your Emergency Fund?",
                        textScaleFactor: 1.3,
                        textDirection: TextDirection.ltr)),
                SizedBox(
                    height: 70.0,
                    child: Text(
                        "Financial experts recommend 3 to 6 months of your household income.",
                        textDirection: TextDirection.ltr)),
                question3,
                SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => _QuestionnairePageState4()),
                    );
                  },
                  child: Text('Next'),
                ),
              ];
    return buildScaffold('Personal Info: Fund Goal', q3Children);
  }
}

class _QuestionnairePageState4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final question4 = buildTextField();

    final q4Children = <Widget>[
                SizedBox(
                    height: 70.0,
                    child: Text("How Much Do You Want To Deposit Initially?",
                        textScaleFactor: 1.3,
                        textDirection: TextDirection.ltr)),
                SizedBox(
                    height: 70.0,
                    child: Text(
                        "This amount will act as the baseline for your Avatar.",
                        textDirection: TextDirection.ltr)),
                question4,
                SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {
                    // Go to Next Screen
                    rungame();
                  },
                  child: Text('Submit User Info'),
                ),
              ];
    return buildScaffold('Personal Info: Initial Deposit', q4Children);
  }
}

void main() {
  runApp(Questionnaire());
}
