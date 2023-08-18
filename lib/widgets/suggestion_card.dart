import 'package:flutter/material.dart';
import 'package:kc_tv_app/screens/player_screen.dart';

class SuggestionCard extends StatelessWidget {
  final String img;
  final String url;
  final String titulo;

  const SuggestionCard({super.key, required this.img, required this.url, required this.titulo});

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
                  builder: (context) => PlayerScreen(url: url)
                )
              );
            },
            child: Image(image: AssetImage(img))
          ),
        ),
        const SizedBox( width: 20.0,),
        Column(
          children: [
            const SizedBox(height: 100),
            SizedBox(
              width: 300,
              height: 50,
              child: Text('Pelicula', style: Theme.of(context).textTheme.headlineLarge,),
            ),
            SizedBox(
              width: 300,
              height: 100,
              child: Text(titulo, style: const TextStyle(fontSize: 30)),
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