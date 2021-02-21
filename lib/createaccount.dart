import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'questionnaire.dart';


buildTextField(obscured, hiddenText){
  final temp = TextField(
      obscureText: obscured,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: hiddenText,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    return temp;
}


class CreateNewAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

    final firstNameField = buildTextField(false, "First Name");
    final lastNameField = buildTextField(false, "Last Name");
    final emailField = buildTextField(false, "Email address- example@example.ca"); 
    final passwordField = buildTextField(true, "Password"); 
    return Scaffold(
        appBar:
            AppBar(title: const Text('Create an Account: Basic Info'), actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            tooltip: "Create account",
            onPressed: () {
              // when the questionnaire is ready...
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Questionnaire()));
            },
          )
        ]),
        body: Center(
            child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 45.0),
                        firstNameField,
                        SizedBox(height: 45.0),
                        lastNameField,
                        SizedBox(height: 45.0),
                        emailField,
                        SizedBox(height: 45.0),
                        passwordField,
                      ]),
                ))));
  }
}
