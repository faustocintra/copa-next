import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: ListaEquipes(),
    );
  }
}

class ListaEquipes extends StatelessWidget {
  ListaEquipes({Key? key}) : super(key: key);

  var equipes = [
    {
      "nome": "Argentina",
      "url_brasao":
          "https://upload.wikimedia.org/wikipedia/pt/f/fc/230px-Afa_logo.svg.png",
      "grupo": "C"
    },
    {
      "nome": "Arábia Saudita",
      "url_brasao": "https://upload.wikimedia.org/wikipedia/pt/0/01/SAFF.png",
      "grupo": "C"
    },
    {
      "nome": "Catar",
      "url_brasao":
          "https://upload.wikimedia.org/wikipedia/pt/a/a9/Associa%C3%A7%C3%A3o_do_Qatar_de_Futebol.png",
      "grupo": "A"
    },
    {
      "nome": "Equador",
      "url_brasao": "https://upload.wikimedia.org/wikipedia/pt/7/74/FEFecu.png",
      "grupo": "A"
    },
    {
      "nome": "Estados Unidos",
      "url_brasao":
          "https://upload.wikimedia.org/wikipedia/commons/8/86/Crest_of_the_United_States_Soccer_Federation.png",
      "grupo": "B"
    },
    {
      "nome": "Inglaterra",
      "url_brasao":
          "https://upload.wikimedia.org/wikipedia/pt/2/2e/England_crest_2009.svg.png",
      "grupo": "B"
    },
    {
      "nome": "Irã",
      "url_brasao":
          "https://upload.wikimedia.org/wikipedia/pt/a/a6/Football_Federation_Islamic_Republic_of_Iran.png",
      "grupo": "B"
    },
    {
      "nome": "México",
      "url_brasao":
          "https://upload.wikimedia.org/wikipedia/pt/b/b3/SeleccionMexico.png",
      "grupo": "C"
    },
    {
      "nome": "País de Gales",
      "url_brasao":
          "https://upload.wikimedia.org/wikipedia/en/d/dc/Wales_national_football_team_logo.svg",
      "grupo": "B"
    },
    {
      "nome": "Países Baixos",
      "url_brasao":
          "https://upload.wikimedia.org/wikipedia/pt/a/a1/Netherlands_national_football_team_logo_2017.png",
      "grupo": "A"
    },
    {
      "nome": "Polônia",
      "url_brasao":
          "https://upload.wikimedia.org/wikipedia/commons/c/c9/Herb_Polski.svg",
      "grupo": "C"
    },
    {
      "nome": "Senegal",
      "url_brasao":
          "https://upload.wikimedia.org/wikipedia/pt/7/7c/FSenegalaiseF.png",
      "grupo": "A"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: equipes.length,
        itemBuilder: (context, i) {
          var equipe = equipes[i];
          //var brasao = CircleAvatar(
          //    backgroundImage: NetworkImage(equipe["url_brasao"].toString()));
          var brasao = Image.network(equipe["url_brasao"].toString());
          return ListTile(
              leading: brasao,
              title: Text(equipe["nome"].toString()),
              subtitle: Text("Grupo " + equipe["grupo"].toString()));
        });
  }
}
