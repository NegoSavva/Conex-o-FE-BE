import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegação Básica',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(), // Tela inicial
    );
  }
}

// Tela 1 (HomeScreen)
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tela 1 - Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navegar para a Tela 2 (SecondScreen)
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
          child: Text('Ir para a Tela 2'),
        ),
      ),
    );
  }
}

// Tela 2 (SecondScreen)
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

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
