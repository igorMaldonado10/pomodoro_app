import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;
  final void Function()? inc;
  final void Function()? dec;

  const EntradaTempo({
    super.key,
    this.inc,
    this.dec,
    required this.titulo,
    required this.valor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // const Padding(padding: EdgeInsets.only(bottom: 45)),
        Text(
          titulo,
          style:  TextStyle(
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: dec,
              child: Icon(
                Icons.arrow_downward,
                // color: DSConstColor.lighter,
                color: DSConstColor.light,
              ),
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.all(15)),
            ),
            Text(
              '$valor min',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            ElevatedButton(
               onPressed: inc,
              // Isso não pode:
              // onPressed: () {
              //   inc;
              // },
              child:  Icon(
                Icons.arrow_upward,
                // color: DSConstColor.lighter,
                color: DSConstColor.light,
              ),
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.all(15)),
            ),
          ],
        ),
      ],
    );
  }
}
