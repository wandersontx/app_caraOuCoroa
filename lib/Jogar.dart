import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
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
            Image.asset('images/logo.png'),
            GestureDetector(
              onTap: () => _exibirResultado(),
              child: Image.asset('images/botao_jogar.png'),
            ),
          ],
        ),
      ),
    );
  }

  void _exibirResultado() {}
}
