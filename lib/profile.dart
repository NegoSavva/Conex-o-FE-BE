import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Perfil')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Voltar para a Tela 1
            Navigator.pop(context);
          },
          child: Text('Voltar para a Tela 1'),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue[50],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                icon: Icon(Icons.settings),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.info),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Informações do app.')),
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
