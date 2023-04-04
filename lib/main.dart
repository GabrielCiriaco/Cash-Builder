// ignore_for_file: prefer_const_constructors
import 'package:casher/provider/dataCenter.dart';
import 'package:casher/screens/Tela_Inicial/botoes.dart';
import 'package:casher/screens/creditos.dart';
import 'package:casher/screens/Tela_Inicial/drawer.dart';
import 'package:casher/screens/Tela_Movimentacoes/extrato.dart';
import 'package:casher/screens/Tela_Inicial/grafico.dart';
import 'package:casher/screens/metas.dart';
import 'package:casher/screens/tiposmov.dart';
import 'package:flutter/material.dart';
import 'package:casher/screens/Tela_Inicial/financeiro.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DataCenter(),   
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blue,
            elevation: 0,
            title: const Text('Inicio'),
          ),
    
          drawer: Menu(),  
        
          body: SingleChildScrollView(
            child: Column(  
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Financeiro(),
                Grafico(),
                Botoes(),
              ],
            ),
          ),
    
          // floatingActionButton: FloatingActionButton(
          //   onPressed: _incrementCounter,
          //   tooltip: 'Increment',
          //   child: const Icon(Icons.add),
          // ), 
        ),
        routes: {
          '/extrato':(_) => Extrato(),
          '/meu-fluxo':(_) => TiposMov(),
          '/metas':(_) => Metas(),
          '/creditos':(_) => Creditos(),
        },
      ),
    );
  }
}
