import 'package:flutter/material.dart';
import 'package:app_portugues/conteudo.dart';
import 'package:app_portugues/detalhes.dart';

import 'atividades_page.dart';
import 'sobre.dart';

class Paginainicial extends StatelessWidget {
  const Paginainicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Color.fromARGB(221, 65, 14, 128),
        ),
        child: Text(
          'Menu Portuquest',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),

      ListTile(
        leading: const Icon(Icons.info),
        title: const Text('Sobre o App'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SobreNosPage(),
            ),
          );
        },
      ),
    ],
  ),
),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'PORTUQUEST',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(221, 65, 14, 128),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white, // Fundo branco aplicado aqui
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'PORTUQUEST',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                    color: Color.fromARGB(221, 65, 14, 128), // Texto agora em roxo
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'O Realismo no Brasil',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54, // Texto em cinza escuro
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 40),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assests/images/realismo.jpeg', // Imagem central mantida
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        height: 180,
                        color: Colors.grey[300],
                        child: const Icon(Icons.image_not_supported),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 40),
                _botao(
                  context,
                  'Conteúdo',
                  const Conteudo(),
                ),
                const SizedBox(height: 20),
                _botao(
                  context,
                  'Atividades',
                  const AtividadesPage(),
                ),
                const SizedBox(height: 20),
                _botao(
                  context,
                  'Sobre',
                  const SobreNosPage(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _botao(BuildContext context, String texto, Widget pagina) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(221, 65, 14, 128),
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => pagina),
          );
        },
        child: Text(
          texto,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}