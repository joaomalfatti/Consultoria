import 'package:consultoria/TelaCliente.dart';
import 'package:consultoria/TelaContato.dart';
import 'package:consultoria/TelaEmpresa.dart';
import 'package:consultoria/TelaServico.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void _abrirEmpresa(){
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context)=> TelaEmpresa())
    );
  }

  void _abrirServico(){
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context)=> TelaServico())
    );
  }

  void _abrirCliente(){
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context)=> TelaCliente())
    );
  }

  void _abrirContato(){
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context)=> TelaContato())
    );
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("imagens/logo.png"),
            Padding(
                padding: EdgeInsets.only(top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
