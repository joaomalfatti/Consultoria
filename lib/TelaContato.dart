import 'package:flutter/material.dart';

class TelaContato extends StatefulWidget {
  const TelaContato({super.key});

  @override
  State<TelaContato> createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        const Text("Contato",
          style: TextStyle(
              color: Colors.white
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset("imagens/detalhe_contato.png"),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Nosso Contato",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepOrange
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                    "Consultoria"
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                    "Cálculos de preços"
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                    "Acompanhamento de projetos"
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
