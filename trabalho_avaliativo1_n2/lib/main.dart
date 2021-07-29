import 'package:flutter/material.dart';

void main() {
  runApp(Inicio());
}

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Cadastrando produtos'),
            backgroundColor: Colors.black12,
          ),
          backgroundColor: Colors.black,
          body : Column(
          children: <Widget>[
            Card(
              child: Column(
              children: <Widget> [
                Image.asset("imagens/capa.jpg"),
            ],
          )
            ),
            Text('Bem Vindo ao projeto (em andamento) sobre criação de fichas para Persoagens de RPG',
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: "Raleway", fontSize: 30, color: Colors.white70)),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
            ),
            ElevatedButton(
              child: Text('Vamos lá!',style: TextStyle(color: Colors.white70) ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Formulario()));
              },
                style: ButtonStyle( backgroundColor: MaterialStateProperty.all( Colors.black12)),
            ),],)
    ),);
  }
}

class Formulario extends StatelessWidget {
  final TextEditingController _controladorNomeJogador = TextEditingController();
  final TextEditingController _controladorEmail = TextEditingController();
  final TextEditingController _controladorNomePersonagem = TextEditingController();
  final TextEditingController _controladorRaca = TextEditingController();
  final TextEditingController _controladorIdade = TextEditingController();
  final TextEditingController _controladorNivel = TextEditingController();
  final TextEditingController _controladorDescricao = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Cadastro da Ficha'),
            backgroundColor: Colors.black12,
          ),
          backgroundColor: Colors.black,
          body: Column(
            children: <Widget>[
              Text('Cadastre seus personagens para seu RPG e vincule com seu email para não perder as novidades que estão por vir',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: "Raleway", fontSize: 20, color: Colors.tealAccent)),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                    children: <Widget>[
                      TextField(
                        controller: _controladorNomeJogador,
                        decoration: InputDecoration(labelText: 'Nome do Jogador'),
                        keyboardType: TextInputType.text,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                      ),
                      TextField(
                        controller: _controladorEmail,
                        decoration: InputDecoration(labelText: 'Email'),
                        keyboardType: TextInputType.text,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                      ),
                      TextField(
                        controller: _controladorNomePersonagem,
                        decoration: InputDecoration(labelText: 'Nome do Personagem'),
                        keyboardType: TextInputType.text,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                      ),
                      TextField(
                        controller: _controladorRaca,
                        decoration: InputDecoration(labelText: 'Raça'),
                        keyboardType: TextInputType.text,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                      ),
                      TextField(
                        controller: _controladorIdade,
                        decoration: InputDecoration(labelText: 'Idade'),
                        keyboardType: TextInputType.number,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                      ),
                      TextField(
                        controller: _controladorNivel,
                        decoration: InputDecoration(labelText: 'Nivel'),
                        keyboardType: TextInputType.number,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                      ),
                      TextField(
                        controller: _controladorDescricao,
                        decoration: InputDecoration(labelText: 'Descrição do Personagem'),
                        keyboardType: TextInputType.text,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                      ),
                    ])),
              RaisedButton(
                child: Text('Cadastrar',style: TextStyle(color: Colors.white70)),
                onPressed: () {
                  final String nomeJogador = _controladorNomeJogador.text;
                  final String email = _controladorEmail.text;
                  final String nomePersonagem = _controladorNomePersonagem.text;
                  final String raca = _controladorRaca.text;
                  final String descricao = _controladorDescricao.text;
                  final int? idade =
                  int.tryParse(_controladorIdade.text);
                  final int? nivel =
                  int.tryParse(_controladorNivel.text);
                  },
                  color: Colors.black12,

              ),
              ElevatedButton(
                  child: Text("Voltar",style: TextStyle(color: Colors.white70)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                style: ButtonStyle( backgroundColor: MaterialStateProperty.all( Colors.black12)),
              )
            ],)),
    );
  }
}
