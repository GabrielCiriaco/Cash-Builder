// ignore_for_file: prefer_const_constructors

import 'package:casher/models/movimentacao.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';
import 'dart:convert';

import '../../provider/dataCenter.dart';

class Extrato extends StatefulWidget{

  @override
  State<Extrato> createState() => _ExtratoState();
}

class _ExtratoState extends State<Extrato> {
  final controller = TextEditingController();
  
  var mov = movimentacao(tipo: 'entrada', titulo: 'teste', descricao: 'descrição de um teste', valor: 200, data: '45/45/45', id: Uuid().v1());
  var mov2 = movimentacao(tipo: 'saida', titulo: 'teste', descricao: 'descrição de um teste', valor: 200, data: '45/45/45', id: Uuid().v1());
  late final SharedPreferences prefs;

  @override 
  Widget build(BuildContext context){
    final provider = Provider.of<DataCenter>(context);
    List <String>listaMovimentacoes = provider.listaMovimentacoes;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Extrato'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          provider.insereTransaction(mov);
          print(listaMovimentacoes.length);
          },
        label: const Text('Approve'),
        icon: const Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        
        children: [
        
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              hintText: 'Saidas',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.blue)
              )
            ),
          ),
        ),

        Expanded(
        
          child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: listaMovimentacoes.map((movi){
              return ListTile(
                onTap: (){
                  List lista = [mov.toJson(),mov2.toJson()];
                  Map teste ={};
                  teste['lista'] = lista;
                  print(lista);
                  },
                          leading:Icon(Icons.circle_sharp),
                          title: Text(movimentacao.fromJson(json.decode(movi)).id ),
                          trailing: InkWell(
                            onTap:(){
                              provider.removeTransaction(movimentacao.fromJson(json.decode(movi)));
                            },
                            child:Icon(Icons.delete_outline),
                          )
                        );
        
            }).toList(),
            
          ),
        )

        
      ]),
    );



  }
}