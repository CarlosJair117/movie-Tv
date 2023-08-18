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
        
        child: ListView(
              scrollDirection: Axis.horizontal,
              children: const  <Widget>[
                Center(
                  child: Text('Recomendado para ti', style: TextStyle( fontSize: 40),),
                ),
                Center( child:SuggestionCard()),
                SuggestionCard(),
                SuggestionCard(),
              ],
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