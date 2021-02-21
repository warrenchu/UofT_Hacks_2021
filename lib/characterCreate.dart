import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rbc_savings_game/maingame.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'maingame.dart';
 


class Character {
  const Character(this.title, this.icon, this.color, this.images);
  final String title;
  final IconData icon;
  final MaterialColor color;
  final List<AssetImage> images;
  
}

const List<Character> allCharacters = <Character>[
  Character('Eyes', Icons.remove_red_eye, Colors.teal, [AssetImage('./assets/graphics-components/brown-eyes.jpg'),AssetImage('./assets/graphics-components/blue-eyes.jpg')]),
  Character('Hair', Icons.face, Colors.cyan, [AssetImage('./assets/graphics-components/blonde-hair.jpg'), AssetImage('./assets/graphics-components/red-hair.jpg')]),
  Character('Shirt', Icons.checkroom, Colors.orange, [AssetImage('./assets/graphics-components/white-shirt.jpg'),AssetImage('./assets/graphics-components/black-shirt.jpg')]),
  Character('Pants', Icons.airline_seat_legroom_normal, Colors.blue, [AssetImage('./assets/graphics-components/black-pants.jpg'),AssetImage('./assets/graphics-components/blue-pants.jpg')])
];

class CharacterView extends StatefulWidget {
  const CharacterView({ Key key, this.character }) : super(key: key);

  final Character character;

  @override
  _CharacterViewState createState() => _CharacterViewState();
}

class _CharacterViewState extends State<CharacterView> {

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
        alignment: Alignment.center,
        child: 
            Image(image: widget.character.images.last)
      
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
         FirstOption(character: widget.character),
         SecondOption(character: widget.character)
        ])
      ),
      Container(
        height: 47,
        color: widget.character.color[75],
        width: MediaQuery.of(context).size.width,
        child:TextButton(
          child: Text('Procced'),
          onPressed: (){
            runGameApp();
          }
        )
      )
      ],)
    );
  }
}


class FirstOption extends StatelessWidget {
  const FirstOption({ Key key, this.character }) : super(key: key);
  
  final Character character;
   
  @override
  Widget build(BuildContext context) {
    return  Center( 
      child: ElevatedButton(
        child: Image(image: character.images.first),
          onPressed: () {
           saveIntInLocalMemory('INDEX_NUMBER', 0);
          },
    ));
  }
}

class SecondOption extends StatelessWidget {
  const SecondOption({ Key key, this.character }) : super(key: key);

  final Character character;
  
  @override
  Widget build(BuildContext context) {
    return  Center( 
      child: ElevatedButton(
        child: Image(image: character.images.last),
          onPressed: () {
           saveIntInLocalMemory('INDEX_NUMBER', 1);
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

Future<int> getImageFromLocalMemory(String key) async {
    var pref = await SharedPreferences.getInstance();
    var int = pref.getInt(key) ?? 0;
    return int;
  }

Future<void> saveIntInLocalMemory(String key, int value) async {
    var pref = await SharedPreferences.getInstance();
    pref.setInt(key, value);
  }


void main() {
  runApp(MaterialApp(home: HomePage(), debugShowCheckedModeBanner: false));
}