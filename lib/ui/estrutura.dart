import 'package:flutter/material.dart';
import '../tabs/lista_equipes.dart';
import '../tabs/lista_grupos.dart';
import '../tabs/lista_jogos.dart';

class Estrutura extends StatefulWidget {
  const Estrutura({Key? key}) : super(key: key);

  @override
  State<Estrutura> createState() => _EstruturaState();
}

class _EstruturaState extends State<Estrutura> {
  final List<Widget> _abas = [ListaEquipes(), ListaGrupos(), ListaJogos()];
  int _indiceAba = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text("Copa do Mundo Catar 2022"),
        ),
        body: _abas[_indiceAba],
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.shield), label: 'Equipes'),
              BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Grupos'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.sports_soccer), label: 'Jogos'),
            ],
            currentIndex: _indiceAba,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.brown,
            backgroundColor: Colors.orange,
            onTap: onTabTapped));
  }

  onTabTapped(int index) {
    setState(() {
      _indiceAba = index;
    });
  }
}
