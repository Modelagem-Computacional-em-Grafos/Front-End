import 'package:flutter/material.dart';
import 'package:grafos/components/form_field_app.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<List<String>> rotas = []; // Lista de rotas simulada
  Map<String, Color> rotaColors = {}; // Mapeamento de rotas para cores
  Map<String, int> rotaOrder = {}; // Mapeamento de posição para ordem na rota

  @override
  void initState() {
    super.initState();
    // Simulando a chamada da API para obter as rotas
    fetchRotasFromApi();
  }

  void fetchRotasFromApi() async {
    // Simulação da resposta da API com as rotas
    rotas = [
      ['A1', 'B2', 'C3'],
      ['D4', 'E5', 'F6'],
      ['A8', 'B1', 'H7', 'G3'],
    ];

    // Gerando cores distintas para cada rota e numerando as posições
    rotaColors = generateRotaColors(rotas.length);
    rotaOrder = generateRotaOrder(rotas);

    setState(() {}); // Atualizando a interface
  }

  // Função para gerar cores para cada rota
  Map<String, Color> generateRotaColors(int numberOfRoutes) {
    List<Color> colors = [Colors.red, Colors.blue, Colors.green, Colors.orange];
    Map<String, Color> rotaColors = {};

    for (int i = 0; i < numberOfRoutes; i++) {
      Color color = colors[i % colors.length];
      for (String position in rotas[i]) {
        rotaColors[position] = color;
      }
    }
    return rotaColors;
  }

  // Função para gerar a ordem de cada posição na rota
  Map<String, int> generateRotaOrder(List<List<String>> rotas) {
    Map<String, int> rotaOrder = {};
    for (var rota in rotas) {
      for (int i = 0; i < rota.length; i++) {
        rotaOrder[rota[i]] = i + 1; // Numerando a posição na rota
      }
    }
    return rotaOrder;
  }

  String getGridPosition(int index) {
    int row = index ~/ 8;
    int col = index % 8;
    return '${String.fromCharCode(65 + row)}${col + 1}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/imgs/FazendaImg.jpg'),
                  Positioned(
                    top: 39,
                    left: 39,
                    right: 110,
                    bottom: 35,
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 8,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 2,
                      ),
                      itemCount: 64,
                      itemBuilder: (context, index) {
                        String position = getGridPosition(index);

                        Color? bgColor = rotaColors[position];
                        int? number = rotaOrder[position];

                        return Container(
                          decoration: BoxDecoration(
                            color: bgColor ?? Colors.transparent,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Center(
                            child: Text(
                              number != null ? '$number' : '',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const FormFieldApp(),
            ],
          ),
        ),
      ),
    );
  }
}
