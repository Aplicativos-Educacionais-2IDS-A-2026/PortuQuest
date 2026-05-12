import 'package:flutter/material.dart';

class AtividadesPage extends StatefulWidget {
  const AtividadesPage({super.key});

  @override
  State<AtividadesPage> createState() => _AtividadesPageState();
}

class _AtividadesPageState extends State<AtividadesPage> {
  // Mapa para armazenar as respostas do usuário
  final Map<int, String?> _respostas = {};
  bool _exibirCores = false;

  // GABARITO OFICIAL
  final Map<int, String> _gabarito = {
    1: 'castro',
    2: 'bras_cubas',
    3: 'objetividade',
    4: 'correta',
    5: 'franca',
    6: 'cortico',
    7: 'madame',
    8: 'cientificismo',
    9: 'pessimismo',
    10: 'quincas',
  };

  Color? _getCorQuestao(int numeroPergunta, String valorAlternativa) {
    if (!_exibirCores) return null;
    String? selecionada = _respostas[numeroPergunta];

    if (valorAlternativa == _gabarito[numeroPergunta]) {
      return Colors.green.withOpacity(0.2); // Sempre destaca a correta em verde
    }
    if (selecionada == valorAlternativa && selecionada != _gabarito[numeroPergunta]) {
      return Colors.red.withOpacity(0.2); // Se errou, destaca a escolha em vermelho
    }
    return null;
  }

  void _finalizar() {
    if (_respostas.length < 10) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Por favor, responda todas as 10 questões!')),
      );
      return;
    }

    int acertos = 0;
    _gabarito.forEach((key, value) {
      if (_respostas[key] == value) acertos++;
    });

    setState(() => _exibirCores = true);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Resultado Final'),
        content: Text('Você acertou $acertos de 10 questões!'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('VER GABARITO'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      title: const Text(
        'SIMULADO DE REALISMO',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: const Color.fromARGB(221, 65, 14, 128),
    ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            _buildQuestao(1, '1. Qual dos autores abaixo NÃO pertence ao Realismo?', {
              'machado': 'Machado de Assis',
              'eca': 'Eça de Queirós',
              'flaubert': 'Gustave Flaubert',
              'castro': 'Castro Alves (Condoreirismo)',
              'aloisio': 'Aluísio Azevedo',
            }),
            _buildQuestao(2, '2. Qual obra marca o início do Realismo no Brasil (1881)?', {
              'guarani': 'O Guarani',
              'bras_cubas': 'Memórias Póstumas de Brás Cubas',
              'ateneu': 'O Ateneu',
              'cortico': 'O Cortiço',
              'escrava': 'A Escrava Isaura',
            }),
            _buildQuestao(3, '3. Qual a principal preocupação da narrativa realista?', {
              'idealizacao': 'Idealização da mulher e do herói',
              'fuga': 'Fuga para o passado ou para a morte',
              'objetividade': 'Análise psicológica e objetividade social',
              'nacionalismo': 'Nacionalismo exacerbado e ufanismo',
              'religiosidade': 'Exaltação dos valores medievais',
            }),
            _buildQuestao(4, '4. Assinale a alternativa que contém apenas obras de Machado de Assis:', {
              'opcao1': 'O Guarani e Iracema',
              'correta': 'Quincas Borba, Dom Casmurro e Memorial de Aires',
              'opcao3': 'O Cortiço e Casa de Pensão',
              'opcao4': 'Os Lusíadas e Mensagem',
            }),
            _buildQuestao(5, '5. Em qual país o Realismo teve sua origem literária?', {
              'brasil': 'Brasil',
              'portugal': 'Portugal',
              'franca': 'França',
              'inglaterra': 'Inglaterra',
              'alemanha': 'Alemanha',
            }),
            _buildQuestao(6, '6. Qual obra é considerada o marco do Naturalismo (vertente do Realismo) no Brasil?', {
              'cortico': 'O Cortiço',
              'bras_cubas': 'Memórias Póstumas de Brás Cubas',
              'dom': 'Dom Casmurro',
              'senhora': 'Senhora',
            }),
            _buildQuestao(7, '7. Qual livro de Gustave Flaubert é o marco inicial do Realismo mundial?', {
              'miseraveis': 'Os Miseráveis',
              'madame': 'Madame Bovary',
              'germinal': 'Germinal',
              'nana': 'Nana',
            }),
            _buildQuestao(8, '8. O Realismo sofreu forte influência de qual corrente filosófica?', {
              'iluminismo': 'Iluminismo',
              'cientificismo': 'Positivismo e Cientificismo',
              'existencialismo': 'Existencialismo',
              'humanismo': 'Humanismo',
            }),
            _buildQuestao(9, '9. Uma característica marcante do "Pessimismo Machadiano" é:', {
              'pessimismo': 'A visão irônica e desencantada da sociedade',
              'alegria': 'A exaltação da bondade humana',
              'fe': 'A confiança plena nas instituições',
              'amor': 'O final feliz obrigatório',
            }),
            _buildQuestao(10, '10. Qual personagem machadiano "descobre" a teoria do Humanitismo?', {
              'bentinho': 'Bentinho',
              'capitu': 'Capitu',
              'quincas': 'Quincas Borba',
              'bras': 'Brás Cubas',
              'escobar': 'Escobar',
            }),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(221, 65, 14, 128),
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 60),
              ),
              onPressed: _finalizar,
              child: const Text('FINALIZAR E VER NOTA', style: TextStyle(fontSize: 18)),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildQuestao(int numero, String titulo, Map<String, String> opcoes) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(titulo, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ),
        ...opcoes.entries.map((opt) => Container(
          margin: const EdgeInsets.symmetric(vertical: 2),
          decoration: BoxDecoration(
            color: _getCorQuestao(numero, opt.key),
            borderRadius: BorderRadius.circular(8),
          ),
          child: RadioListTile<String>(
            title: Text(opt.value, style: const TextStyle(fontSize: 14)),
            value: opt.key,
            groupValue: _respostas[numero],
            onChanged: _exibirCores ? null : (v) => setState(() => _respostas[numero] = v),
            activeColor: const Color.fromARGB(221, 65, 14, 128),
          ),
        )),
        const Divider(height: 30),
      ],
    );
  }
}