import 'package:flutter/material.dart';

void main() => runApp(PrimeiraTela());

class PrimeiraTela extends StatelessWidget {
  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorData = TextEditingController();
  final TextEditingController _controladorHora = TextEditingController();
  final TextEditingController _controladorMedico = TextEditingController();
  final TextEditingController _controladorNumeroCelular =
      TextEditingController();
  final TextEditingController _controladorEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Agendamento Clínico'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _controladorNome,
                decoration: InputDecoration(labelText: 'Nome do paciente'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controladorData,
                  decoration:
                      InputDecoration(labelText: 'Data  do agendamento'),
                  keyboardType: TextInputType.datetime,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controladorHora,
                  decoration: InputDecoration(labelText: 'Hora do agendamento'),
                  keyboardType: TextInputType.datetime,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controladorMedico,
                  decoration: InputDecoration(labelText: 'Médico'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controladorNumeroCelular,
                  decoration: InputDecoration(labelText: 'Número do Celular'),
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controladorEmail,
                  decoration: InputDecoration(labelText: 'E-mail'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: RaisedButton(
                  child: Text('Marcar consulta'),
                  onPressed: () {
                    final String nome = _controladorNome.text;
                    final int data = int.tryParse(_controladorData.text);
                    final int hora = int.tryParse(_controladorHora.text);
                    final String medico = _controladorMedico.text;
                    final int numeroCelular =
                        int.tryParse(_controladorNumeroCelular.text);
                    final String email = _controladorEmail.text;

                    final Paciente produtoNovo = Paciente(
                        nome, data, hora, medico, numeroCelular, email);
                    print(produtoNovo);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Paciente {
  final String nome;
  final int data;
  final int hora;
  final String medico;
  final int numeroCelular;
  final String email;

  Paciente(
    this.nome,
    this.data,
    this.hora,
    this.medico,
    this.numeroCelular,
    this.email,
  );

  @override
  String toString() {
    return 'Paciente{nome: $nome, data: $data, hora: $hora, medico: $medico, numeroCleluar: $numeroCelular, email: $email}';
  }
}

class SegundaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consultas Marcadas"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Retornar !'),
        ),
      ),
    );
  }
}
