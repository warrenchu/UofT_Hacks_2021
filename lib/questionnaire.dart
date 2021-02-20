import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
// // import 'package:smart_select/smart_select.dart';

// // import 'maingame.dart';

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

class _QuestionnairePageState1 extends State<QuestionnairePage> {
  @override
  Widget build(BuildContext context) {
    // card number
    final question1a1 = Material(
      elevation: 6.0,
      borderRadius: BorderRadius.circular(3.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => _QuestionnairePageState2()),
          );
        },
        child: Text("Salaried",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final question1a2 = Material(
      elevation: 6.0,
      borderRadius: BorderRadius.circular(3.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => _QuestionnairePageState2()),
          );
        },
        child: Text("Freelance / Contract",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final question1a3 = Material(
      elevation: 6.0,
      borderRadius: BorderRadius.circular(3.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => _QuestionnairePageState2()),
          );
        },
        child: Text("Hourly Wage",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    

    return Scaffold(
      appBar: AppBar(title: Text('Personal Info: Work')),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _QuestionnairePageState2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final question2a1 = Material(
      elevation: 6.0,
      borderRadius: BorderRadius.circular(3.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => _QuestionnairePageState3()),
          );
        },
        child: Text("Weekly",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final question2a2 = Material(
      elevation: 6.0,
      borderRadius: BorderRadius.circular(3.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => _QuestionnairePageState3()),
          );
        },
        child: Text("Biweekly",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final question2a3 = Material(
      elevation: 6.0,
      borderRadius: BorderRadius.circular(3.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => _QuestionnairePageState3()),
          );
        },
        child: Text("Intermittently",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    

    return Scaffold(
      appBar: AppBar(title: Text('Personal Info: Pay Frequency')),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _QuestionnairePageState3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final question3 = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Round to the Nearest Dollar",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
    );

    return Scaffold(
      appBar: AppBar(title: Text('Personal Info: Fund Goal')),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                    height: 70.0,
                    child: Text("How Much Do You Want To Save For Your Emergency Fund?",
                        textScaleFactor: 1.3,
                        textDirection: TextDirection.ltr)),
                SizedBox(
                    height: 70.0,
                    child: Text("Financial experts recommend 3 to 6 months of your household income.",
                        textDirection: TextDirection.ltr)),
                question3,
                SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Next'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20);

void main() {
  runApp(Questionnaire());
}


