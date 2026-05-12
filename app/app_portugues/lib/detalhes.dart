import 'package:flutter/material.dart';

class Conteudo extends StatelessWidget {
  const Conteudo({super.key});

  @override
  Widget build(BuildContext context) {
    return const PaginaRealismo();
  }
}

class PaginaRealismo extends StatelessWidget {
  const PaginaRealismo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          "Realismo",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _tituloCard("Explicação", Icons.menu_book),
            _textoCard(
              "O Realismo foi um movimento literário surgido no século XIX. "
              "Seu objetivo era mostrar a realidade como ela realmente era, "
              "sem exageros ou idealizações.",
            ),

            const SizedBox(height: 20),

            _tituloCard("Principais Características", Icons.star),
            _listaCard([
              "Linguagem objetiva",
              "Crítica social",
              "Análise psicológica",
              "Visão racional",
              "Retrato da realidade",
            ]),

            const SizedBox(height: 20),

            _tituloCard("Abertura no Brasil", Icons.flag),
            _textoCard(
              "O Realismo começou no Brasil em 1881 com a publicação da obra "
              "Memórias Póstumas de Brás Cubas.",
            ),

            const SizedBox(height: 20),

            _tituloCard("Memórias Póstumas de Brás Cubas", Icons.book),
            _textoCard(
              "Livro escrito por Machado de Assis. "
              "A obra utiliza ironia e crítica social.",
            ),

            const SizedBox(height: 20),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(color: Colors.black12, blurRadius: 8),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/1/1d/Machado_de_Assis_1904.jpg",
                  height: 220,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 20),

            _tituloCard("Principais Autores", Icons.people),
            _listaCard([
              "Machado de Assis",
              "Aluísio Azevedo",
              "Raul Pompeia",
              "Domingos Olímpio",
            ]),

            const SizedBox(height: 20),

            _tituloCard("Exemplo Resolvido", Icons.check_circle),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(color: Colors.black12, blurRadius: 8),
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pergunta:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text("Qual obra iniciou o Realismo no Brasil?"),
                  SizedBox(height: 10),
                  Text(
                    "Resposta:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text("Memórias Póstumas de Brás Cubas."),
                ],
              ),
            ),

            const SizedBox(height: 30),

            Center(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black87,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                label: const Text(
                  "Voltar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tituloCard(String texto, IconData icon) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(width: 10),
          Text(
            texto,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _textoCard(String texto) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 8),
        ],
      ),
      child: Text(
        texto,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }

  Widget _listaCard(List<String> itens) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 8),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: itens
            .map((item) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text("• $item",
                      style: const TextStyle(fontSize: 16)),
                ))
            .toList(),
      ),
    );
  }
}