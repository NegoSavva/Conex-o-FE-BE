import 'package:flutter/material.dart';
import 'package:navegacao_entre_telas/qr_code.dart';
import 'main.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Perfil')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // vertical
          crossAxisAlignment: CrossAxisAlignment.center, // horizontal
          mainAxisSize: MainAxisSize.min, // evita esticar
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            SizedBox(height: 16),
            Text(
              'João da Silva',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'joao@email.com',
              style: TextStyle(color: Colors.grey[700]),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Função de editar perfil em breve!')),
                );
              },
              child: Text('Editar Perfil'),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),

      // RODAPÉ
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.person_2_sharp),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Você já está na tela de usuário.'),
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
