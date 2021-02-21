import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class StoreCatalogueHair extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hair-y Situations')),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: Colors.green[50],
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => _buildPopupDialog(context),
                        );
                      },
                      child: Image(image: AssetImage('./assets/graphics-components/blue-hair.jpg')),
                    ),
                    SizedBox(height: 15.0),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => _buildPopupDialog(context),
                        );
                      },
                      child: Image(image: AssetImage('./assets/graphics-components/emerald-hair.jpg')),
                    ),
                  ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class StoreCatalogueShirts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Piece of Shirts')),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: Colors.green[50],
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => _buildPopupDialog(context),
                        );
                      },
                      child: Image(image: AssetImage('./assets/graphics-components/green-shirt.jpg')),
                    ),
                    SizedBox(height: 15.0),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => _buildPopupDialog(context),
                        );
                      },
                      child: Image(image: AssetImage('./assets/graphics-components/red-shirt.jpg')),
                    ),
                    SizedBox(height: 15.0),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => _buildPopupDialog(context),
                        );
                      },
                      child: Image(image: AssetImage('./assets/graphics-components/blue-shirt.jpg')),
                    ),
                  ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class StoreCataloguePants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('I Got Ants in My...')),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: Colors.green[50],
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => _buildPopupDialog(context),
                        );
                      },
                      child: Image(image: AssetImage('./assets/graphics-components/green-pants.jpg')),
                    ),
                    SizedBox(height: 15.0),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => _buildPopupDialog(context),
                        );
                      },
                      child: Image(image: AssetImage('./assets/graphics-components/orange-pants.jpg')),
                    ),
                    SizedBox(height: 15.0),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => _buildPopupDialog(context),
                        );
                      },
                      child: Image(image: AssetImage('./assets/graphics-components/red-pants.jpg')),
                    ),
                    SizedBox(height: 15.0),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => _buildPopupDialog(context),
                        );
                      },
                      child: Image(image: AssetImage('./assets/graphics-components/teal-pants.jpg')),
                    ),
                  ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// No Buy-o Pop-up-o
Widget _buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: const Text('Oh no! Locked Feature!'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Can't spend real or fake money for this stuff just yet."),
      ],
    ),
    actions: <Widget>[
      new FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: Text('Close'),
      ),
    ],
  );
}

void main() {
  runApp(StoreCatalogueHair());
}