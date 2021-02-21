import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
 
 var displayImage; 

class Character {
  const Character(this.title, this.icon, this.color, this.images);
  final String title;
  final IconData icon;
  final MaterialColor color;
  final List<AssetImage> images;
  
}

const List<Character> allCharacters = <Character>[
  Character('Eyes', Icons.home, Colors.teal, [AssetImage('./assets/graphics-components/blue-eyes.jpg')]),
  Character('Hair', Icons.business, Colors.cyan, [AssetImage('./assets/graphics-components/blonde-hair.jpg')]),
  Character('Shirt', Icons.school, Colors.orange, [AssetImage('./assets/graphics-components/white-shirt.jpg')]),
  Character('Pants', Icons.flight, Colors.blue, [AssetImage('./assets/graphics-components/black-pants.jpg')])
];

class CharacterView extends StatefulWidget {
  const CharacterView({ Key key, this.character }) : super(key: key);

  final Character character;

  @override
  _CharacterViewState createState() => _CharacterViewState();
}

class _CharacterViewState extends State<CharacterView> {
  // displayImage = Image(image: widget.character.image);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Choose your ${widget.character.title}'),
        backgroundColor: widget.character.color,
      ),
      backgroundColor: widget.character.color[100],
      body: Column(children: [
        Container(
          height: 300,
        decoration: BoxDecoration(
          border: Border.all(width: 10, color: Colors.black38),
          borderRadius: const BorderRadius.all(const Radius.circular(8)),
        ),
        padding: const EdgeInsets.all(32.0),
        alignment: Alignment.bottomLeft,
        child: Image(widget.character.images[0])
      ),
      Container(
        height: 200,
        decoration: BoxDecoration(
          border: Border.all(width: 10, color: Colors.black38),
          borderRadius: const BorderRadius.all(const Radius.circular(8)),
        ),
        padding: const EdgeInsets.all(32.0),
        alignment: Alignment.bottomLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
         FirstPush(character: widget.character),
         FirstPush(character: widget.character)
        ])
      )
      ],)
    );
  }
}


class FirstPush extends StatefulWidget {
  const FirstPush({ Key key, this.character }) : super(key: key);

  final Character character;
  @override
  _FirstPush createState() => _FirstPush();
}

class _FirstPush extends State<FirstPush> {
  int currentindex = 0;
  
  @override
  Widget build(BuildContext context) {
    return  Center( 
      child: ElevatedButton(
        child: Text('${widget.character.title}'),
          onPressed: () {
           
          },
    ));
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: IndexedStack(
          index: _currentIndex,
          children: allCharacters.map<Widget>((Character character) {
            return CharacterView(character: character);
          }).toList(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: allCharacters.map((Character character) {
          return BottomNavigationBarItem(
            
            icon: Icon(character.icon),
            backgroundColor: character.color,
            title: Text(character.title)
          );
        }).toList(),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: HomePage(), debugShowCheckedModeBanner: false));
}