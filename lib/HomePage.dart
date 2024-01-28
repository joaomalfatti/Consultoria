import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void _abrirEmpresa(){

  }

  void _abrirServico(){

  }

  void _abrirCliente(){

  }

  void _abrirContato(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("ATM Consultoria",
        style: TextStyle(
          color: Colors.white
          ),
        ),
        backgroundColor: Colors.green,
      ) ,
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Image.asset("imagens/logo.png"),
            Padding(
                padding: EdgeInsets.only(top: 32),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: _abrirEmpresa,
                      child: Image.asset("imagens/menu_empresa.png"),
                    ),
                    GestureDetector(
                      onTap: _abrirServico,
                      child: Image.asset("imagens/menu_servico.png"),
                    ),
                  ],
                ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 32),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: _abrirCliente,
                      child: Image.asset("imagens/menu_cliente.png"),
                    ),
                    GestureDetector(
                      onTap: _abrirContato,
                      child: Image.asset("imagens/menu_contato.png"),
                    ),
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}
