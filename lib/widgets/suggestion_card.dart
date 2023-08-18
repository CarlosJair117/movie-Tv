import 'package:flutter/material.dart';
import 'package:kc_tv_app/screens/player_screen.dart';

class SuggestionCard extends StatelessWidget {
  const SuggestionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => const PlayerScreen(url: 'https://youtu.be/v0d0id78XdE')
                )
              );
            },
            child: const Image(image: AssetImage('assets/img/pianista.jpg'))
          ),
        ),
        const SizedBox( width: 20.0,),
        Column(
          children: [
            SizedBox(height: 100),
            SizedBox(
              width: 300,
              height: 50,
              child: Text('Pelicula', style: Theme.of(context).textTheme.headlineLarge,),
            ),
            SizedBox(
              width: 300,
              height: 100,
              child: Text('Pelicaula de Transformers', style: Theme.of(context).textTheme.bodyMedium),
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: Text('Fecha: 12/10/2020', style: Theme.of(context).textTheme.bodyMedium),
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: Text('Duracion: 2:15:00', style: Theme.of(context).textTheme.bodyMedium),
            ),
          ],
        )
      ],
    );
  }
}