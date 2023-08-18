import 'package:flutter/material.dart';
import '../widgets/suggestion_card.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(    
        child: ListView(
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                SizedBox(width: 20,),
                Center(
                  child: Text('Recomendado para ti', style: TextStyle( fontSize: 40),),
                ),
                SizedBox(width: 20,),
                SuggestionCard( img: 'assets/img/batman.jpg', url: 'https://youtu.be/YNl8yV8oPZM', titulo: 'Batman',),
                SuggestionCard( img: 'assets/img/spiderman.png', url: 'https://youtu.be/JfVOs4VSpmA', titulo: 'Spiderman',),
                SuggestionCard( img: 'assets/img/valkiria.jpg', url: 'https://youtu.be/-YppIQUiE9Y', titulo: 'Valkiria',),
              ],
            ),  
        ),
    );
  }
}