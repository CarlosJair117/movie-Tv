import 'package:flutter/material.dart';
import 'package:kc_tv_app/screens/other_screen.dart';
import 'package:kc_tv_app/screens/second_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  
  int selectedIndex = 0; 

  @override
  Widget build(BuildContext context) {

    final screens = [const SecondScreen(), const OtherScreen()];

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Image.asset('assets/img/youtube_logo.png'),
        ),
        title: Text( 'Movie TV', style: Theme.of(context).textTheme.headlineLarge,),
      ),
      body: screens[selectedIndex],
      
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
            backgroundColor: Colors.red
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_rounded),
            label: 'Videos',
            backgroundColor: Colors.red,
          ),
        ],
        backgroundColor: Colors.amber,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        ),
    );
  }
}