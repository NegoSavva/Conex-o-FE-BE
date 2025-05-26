import 'package:flutter/material.dart';
import 'package:navegacao_entre_telas/qrCode.dart';
import 'profile.dart';
import 'tela2.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SGM',
      theme: ThemeData(primarySwatch: Colors.blue),
      
    );
  }
}

// Tela 1 (HomeScreen)
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Aba inicial')),

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navegar para a Tela 2 (SecondScreen)
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  LoginAnimationPage()),
            );
          },
          child: Text('Ir para a Tela 2'),
        ),
      ),

      // RODAPÉ (Layout Inferior)
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue[50],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  // Aqui você já está na Home
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Você já está na tela inicial.')),
                  );
                },
              ),
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
