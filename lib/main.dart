// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

@override
// ignore: use_key_in_widget_constructors
class PerguntaApp extends StatelessWidget {
  void responder() {
    // ignore: avoid_print
    print('Pergunta respondida');
  }

  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita ?',
      'Qual é seu animal favorita ?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(children: <Widget>[
          Text(perguntas[0]),
          ElevatedButton(
            child: Text('resposta 1'),
            onPressed: responder,
          )
        ]),
      ),
    );
  }
}
