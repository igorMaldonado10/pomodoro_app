import 'package:flutter/material.dart';
import 'package:pomodoro/components/entradaTempo.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text('Pomodoro'),
          EntradaTempo(
            titulo: 'Trabalho',
            valor: 25,
          ),
          EntradaTempo(titulo: 'Descanço', valor: 25)
        ],
      ),
    );
  }
}