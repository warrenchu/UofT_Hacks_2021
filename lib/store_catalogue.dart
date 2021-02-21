import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class StoreCatalogueHair extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hair Options')),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Material(
                  elevation: 6.0,
                  borderRadius: BorderRadius.circular(3.0),
                  color: Color(0xff01A0C7),
                  child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => buildClick),
                      // );
                    },
                    child: Image(image: AssetImage('./assets/graphics-components/blue-hair.jpg')),
                  ),
                ),]
            ),
          ),
        ),
      ),
    );
  }
}

// class _QuestionnairePageState2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {

//     final q2Children = <Widget>[
//                 SizedBox(
//                     height: 50.0,
//                     child: Text("How often do you get paid?",
//                         textScaleFactor: 1.7,
//                         textDirection: TextDirection.ltr)),
//                 SizedBox(height: 45.0),
//                 question2a1,
//                 SizedBox(height: 15.0),
//                 question2a2,
//                 SizedBox(height: 15.0),
//                 question2a3
//               ];
//     return buildScaffold('Personal Info: Pay Frequency', q2Children);
//   }
// }


void main() {
  runApp(StoreCatalogueHair());
}