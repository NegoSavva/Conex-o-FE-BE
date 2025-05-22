import 'package:flutter/material.dart';
import 'qr_code.dart';
import 'profile.dart';
import 'tela2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SGM',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(), // Tela inicial
    );
  }
}

// Tela 1 (HomeScreen)
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Tiramos a AppBar nativa
      // appBar: AppBar(title: Text('Aba inicial')),

      body: Column(
        children: [
          // Custom AppBar em um Container
          Container(
            padding: EdgeInsets.only(top: 40, left: 16, right: 16, bottom: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(36),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8,
                  offset: Offset(0, 2),
                )
              ],
            ),
            child: Center(
              child: Text(
                'Aba inicial',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // Conteúdo principal
          Expanded(
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tela2()),
                  );
                },
                child: Text('Ir para a Tela 2'),
              ),
            ),
          ),
        ],
      ),

      // Rodapé (sem alterações)
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue[50],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.person_2_sharp),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Você já está na tela inicial.'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.qr_code_scanner_sharp),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Qrcode()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
