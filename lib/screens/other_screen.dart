import 'package:flutter/material.dart';

import '../widgets/suggestion_card.dart';

class OtherScreen extends StatefulWidget {
  const OtherScreen({super.key});

  @override
  State<OtherScreen> createState() => _OtherScreenState();
}

class _OtherScreenState extends State<OtherScreen> {
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
                SuggestionCard( img: 'assets/img/pianista.jpg', url: 'https://youtu.be/yDA1mK6v-ME', titulo: 'El pianista',),
                SuggestionCard( img: 'assets/img/trasnformers.jpeg', url: 'https://youtu.be/v0d0id78XdE', titulo: 'Tranformers',),
                SuggestionCard( img: 'assets/img/avengers.jpg', url: 'https://youtu.be/yNXfOOL8824', titulo: 'Avengers',),
              ],
            ),  
        ),
    );
  }
}