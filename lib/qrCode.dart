import 'package:flutter/material.dart';
import 'package:navegacao_entre_telas/profile.dart';
import 'main.dart';

class Qrcode extends StatelessWidget {
  const Qrcode({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('QR CODE')),
      body: Center(
               child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Imagem local
              Image.asset('assets/images/cod.png'),
              SizedBox(height: 20),
            ],
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
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
                  // Aqui você já está na Home
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Você já está na tela de QRCODE.')),
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
