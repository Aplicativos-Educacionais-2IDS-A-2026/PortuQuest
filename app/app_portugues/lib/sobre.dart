import 'package:flutter/material.dart';

class SobreNosPage extends StatelessWidget {
  const SobreNosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      title: const Text(
        'SOBRE NÓS',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      centerTitle: true,
      backgroundColor: Color.fromARGB(221, 65, 14, 128),
      elevation: 0,
    ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // Título principal
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color.fromARGB(221, 65, 14, 128),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              children: [
                Icon(Icons.info_outline, color: Colors.white, size: 40),
                SizedBox(height: 10),
                Text(
                  'INFORMAÇÕES DO PROJETO',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          // Card de informações
          _buildCard(
            children: [
              _infoRow(Icons.apps, 'Nome do aplicativo', 'PORTUQUEST'),
              _infoRow(Icons.book, 'Disciplina', 'Língua Portuguesa'),
              _infoRow(Icons.flag, 'Objetivo',
                  'Ensinar de modo interativo o movimento literário Realismo'),
              _infoRow(Icons.groups, 'Turma', '3º A'),
              _infoRow(Icons.person, 'Professor', 'Gabriel'),
              _infoRow(Icons.computer, 'Tecnologias', 'FLUTTER'),
            ],
          ),

          const SizedBox(height: 25),

          // Card integrantes
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color.fromARGB(221, 65, 14, 128),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Text(
              'INTEGRANTES DO GRUPO',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ),

          const SizedBox(height: 15),

          _buildCard(
            children: const [
              _memberTile('EMILY'),
              _memberTile('FELIPE'),
              _memberTile('LOUIS'),
              _memberTile('NICOLY'),
            ],
          ),
        ],
      ),
    );
  }

  static Widget _buildCard({required List<Widget> children}) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 126, 29, 144),
            blurRadius: 8,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Column(children: children),
    );
  }

  static Widget _infoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Color.fromARGB(221, 65, 14, 128)),
          const SizedBox(width: 10),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(color: Color.fromARGB(221, 65, 14, 128), fontSize: 16),
                children: [
                  TextSpan(
                    text: '$label:\n',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: value),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _memberTile extends StatelessWidget {
  final String name;

  const _memberTile(this.name);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Color.fromARGB(221, 65, 14, 128),
        child: Icon(Icons.person, color: Colors.white),
      ),
      title: Text(
        name,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }
}