import 'package:flutter/material.dart';
import 'package:navegacao_entre_telas/qrCode.dart';
import 'main.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

<<<<<<< HEAD
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController cursoController = TextEditingController();
  final TextEditingController turmaController = TextEditingController();
  final TextEditingController aniversarioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Cabeçalho com gradiente + foto
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 110, // 🔹 altura fixa para o cabeçalho
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF6BA4F8), Color(0xFFB3D2FF)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()),
                            );
                          },
                        ),
                         Image.asset(
                  'assets/images/fiebof.png',
                  width: 100,
                  height: 100,
                ),
                      ],
                    ),
                  ),
                ),
                // 🔹 Avatar centralizado e "sobrando" para fora do container
                Positioned(
                  bottom: -75,
                  left: MediaQuery.of(context).size.width / 2 - 75,
                  child: const CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage('assets/images/th.webp'),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 90), // espaço para a foto não sobrepor os textos

            // Nome e e-mail fixos
            const Text(
              "Nome",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              "RM00000@estudante.fieb.edu.br",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),

            // Campo Nome completo (editável)
         Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
  child: buildTextField("Nome completo", nomeController),
),


            // Curso e Turma (editáveis)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Row(
                children: [
                  Expanded(child: buildTextField("Curso", cursoController)),
                  const SizedBox(width: 10),
                  Expanded(child: buildTextField("Turma", turmaController)),
                ],
              ),
            ),

            // Aniversário (com seletor de data)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: TextField(
                controller: aniversarioController,
                readOnly: true,
                decoration: InputDecoration(
                  labelText: "Aniversário",
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.calendar_today),
                    onPressed: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime(2006, 8, 12),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now(),
                      );
                      if (pickedDate != null) {
                        setState(() {
                          aniversarioController.text =
                              "${pickedDate.day.toString().padLeft(2, '0')}/"
                              "${pickedDate.month.toString().padLeft(2, '0')}/"
                              "${pickedDate.year}";
                        });
                      }
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
=======
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
>>>>>>> c9bf76dcc7edf3e53f2e2eaeeb4aa6d6b84540a0
          ],
        ),
      ),

<<<<<<< HEAD
      // Rodapé padronizado
=======
      // RODAPÉ
>>>>>>> c9bf76dcc7edf3e53f2e2eaeeb4aa6d6b84540a0
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.person_outline),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const Profile()),
                  );
                },
              ),
<<<<<<< HEAD
              Container(
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: const Icon(Icons.home, color: Colors.white),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => const HomeScreen()),
                    );
                  },
                ),
=======
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
>>>>>>> c9bf76dcc7edf3e53f2e2eaeeb4aa6d6b84540a0
              ),
              IconButton(
                icon: const Icon(Icons.qr_code_scanner),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const Qrcode()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Função para criar campos editáveis
  Widget buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
