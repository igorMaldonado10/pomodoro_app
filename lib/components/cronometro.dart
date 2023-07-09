import 'package:flutter/material.dart';
import 'package:pomodoro/components/cronometro_botao.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.only(bottom: 25)),
          Text(
            'Hora de Trabalhar',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          Text(
            '25:00',
            style: const TextStyle(
              fontSize: 120,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: CronometroBotao(icone: Icons.play_arrow, texto: 'Iniciar'),
              ),
              // Padding(
              //padding: const EdgeInsets.only(right: 10),
              //   child: CronometroBotao(icone: Icons.stop, texto: 'Parar'),
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: CronometroBotao(icone: Icons.refresh, texto: 'Reiniciar'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
