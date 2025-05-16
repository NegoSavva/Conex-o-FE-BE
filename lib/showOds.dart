import 'package:flutter/material.dart';

class Showods extends StatelessWidget {
  const Showods({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nossa ODS')),
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
