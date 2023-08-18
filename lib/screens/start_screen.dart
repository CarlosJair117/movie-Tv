import 'package:flutter/material.dart';
import 'package:kc_tv_app/widgets/suggestion_card.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Image.asset('assets/img/youtube_logo.png'),
        ),
        title: Text( 'Movie TV', style: Theme.of(context).textTheme.headlineLarge,),
      ),
      body: Center(
        
        child: GestureDetector(
          
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
          
        ),
      
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_rounded),
            label: 'Videos',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_camera_back),
            label: 'Videos',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_rounded),
            label: 'Videos',
            backgroundColor: Colors.red,
          ),
        ],
        backgroundColor: Colors.amber,
        onTap: (value) => {},
        ),
    );
  }
}