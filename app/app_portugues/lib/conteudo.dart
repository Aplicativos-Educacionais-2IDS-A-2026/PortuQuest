import 'package:flutter/material.dart';

class RealismoPage extends StatelessWidget {
  const RealismoPage({super.key});

  static const Color roxoEscuro = Color.fromARGB(221, 65, 14, 128);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),

      appBar: AppBar(
        backgroundColor: roxoEscuro,
        centerTitle: true,

        // SETINHA BRANCA
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),

        // TEXTO BRANCO
        title: const Text(
          'REALISMO',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          _buildSecao(
            icon: Icons.menu_book,
            titulo: 'Explicação',
            conteudo:
                'O Realismo foi um movimento literário surgido no século XIX. Seu objetivo era mostrar a realidade como ela realmente era, sem exageros ou idealizações.',
          ),

          const SizedBox(height: 20),

          _buildSecao(
            icon: Icons.star,
            titulo: 'Principais Características',
            conteudo:
                '• Linguagem objetiva\n'
                '• Crítica social\n'
                '• Análise psicológica\n'
                '• Visão racional\n'
                '• Retrato da realidade',
          ),

          const SizedBox(height: 20),

          _buildSecao(
            icon: Icons.flag,
            titulo: 'Abertura no Brasil',
            conteudo:
                'O Realismo começou no Brasil em 1881 com a publicação da obra Memórias Póstumas de Brás Cubas.',
          ),

          const SizedBox(height: 20),

          // REMOVIDA A IMAGEM QUEBRADA
          _buildSecao(
            icon: Icons.bookmark,
            titulo: 'Memórias Póstumas de Brás Cubas',
            conteudo:
                'Livro escrito por Machado de Assis. '
                'A obra utiliza ironia, crítica social '
                'e análise psicológica dos personagens.',
          ),

          const SizedBox(height: 20),

          _buildSecao(
            icon: Icons.groups,
            titulo: 'Principais Autores',
            conteudo:
                '• Machado de Assis\n'
                '• Aluísio Azevedo\n'
                '• Raul Pompeia\n'
                '• Domingos Olímpio',
          ),

          const SizedBox(height: 20),

          _buildSecao(
            icon: Icons.check_circle,
            titulo: 'Exemplo Resolvido',
            conteudo:
                'Pergunta:\n'
                'Qual obra iniciou o Realismo no Brasil?\n\n'
                'Resposta:\n'
                'Memórias Póstumas de Brás Cubas (1881).',
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildSecao({
    required IconData icon,
    required String titulo,
    required String conteudo,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        // CABEÇALHO ROXO
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 16,
          ),
          decoration: BoxDecoration(
            color: roxoEscuro,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 28,
              ),

              const SizedBox(width: 12),

              Expanded(
                child: Text(
                  titulo,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 12),

        // CARD BRANCO
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 8,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Text(
            conteudo,
            style: const TextStyle(
              fontSize: 16,
              height: 1.6,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}