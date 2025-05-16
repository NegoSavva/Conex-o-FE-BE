import 'package:flutter/material.dart';

class Tela2 extends StatelessWidget {
  const Tela2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tela 2 - SecondScreen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Voltar para a Tela 1
            Navigator.pop(context);
          },
          child: Text('Voltar para a Tela 1'),
        ),
      ),
    );
  }
}
