import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  String ladoMoeda;

  Resultado(this.ladoMoeda);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //0xff -> prefixo para utilizar cores hexadecimais
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("images/moeda_${widget.ladoMoeda}.png"),
            GestureDetector(
              onTap: () {
                //fecha a interface atual(Resultado.dart) e voltar a proxima interface da fila (Jogar.dart)
                Navigator.pop(context);
              },
              child: Image.asset('images/botao_voltar.png'),
            ),
          ],
        ),
      ),
    );
  }
}
