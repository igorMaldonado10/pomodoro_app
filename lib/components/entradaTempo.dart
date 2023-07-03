import 'package:flutter/material.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;

  const EntradaTempo({
    super.key,
    required this.titulo,
    required this.valor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(titulo),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Icon(
                Icons.arrow_downward,
                // color: ,
              ),
            ),
          ],
        ),
        Text('$valor')
      ],
    );
  }
}
