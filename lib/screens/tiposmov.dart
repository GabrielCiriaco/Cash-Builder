// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../models/tipos.dart';

class TiposMov extends StatefulWidget {
  const TiposMov({super.key});

  @override
  State<TiposMov> createState() => _TiposMovState();
}

class _TiposMovState extends State<TiposMov> with SingleTickerProviderStateMixin {
  late final SharedPreferences prefs;
  late List <String>ListaTiposEntrada; 
  late List <String>ListaTiposSaida; 
  late TabController _tabController;
  tipos t1 = tipos(tipo:'Rep',valor:350);
  tipos t2 = tipos(tipo:'Trabalho',valor:1000);
  
  void getListaTipos() async{
    prefs = await SharedPreferences.getInstance();
    
    //await prefs.setStringList('tipos-Entrada', []);
    //await prefs.setStringList('tipos-Saida', []);
    setState(() {
      
      ListaTiposEntrada = (prefs.getStringList('tipos-Entrada')?? []);
      ListaTiposSaida = (prefs.getStringList('tipos-Saida')?? []);
      
    });

  }

  

  void insereNovaEntrada(tipos novotipo) async{
    setState(() {
      
      ListaTiposEntrada.add(json.encode(novotipo.toJson()));;
    });

    await prefs.setStringList('tipos-Entrada', ListaTiposEntrada);
  }

  void insereNovaSaida(tipos novotipo) async{
    setState(() {
      ListaTiposSaida.add(json.encode(novotipo.toJson()));
    });

    await prefs.setStringList('tipos-Saida', ListaTiposSaida);
  }


  void initState() {
    
    getListaTipos();
    
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
    // TODO: implement initState
    super.initState();

  }  

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meu Fluxo'),
          centerTitle: true,
          bottom: TabBar(
              controller: _tabController,
              tabs: <Widget>[
                Tab(
                  text: 'Entradas',
                ),
                Tab(
                  text: 'Saidas',
                ),
              ],
            ),
        ),
        floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          if(_tabController.index == 0){
            print('asdad');
            insereNovaEntrada(t2);
          }
          else{
            print('qweqwe');
            insereNovaSaida(t1);
          }
          
          },
        label: const Text('Approve'),
        icon: const Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ),

        body: TabBarView(
            controller: _tabController,
            children: <Widget>[
              Center(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                // ignore: prefer_const_constructors
                Padding(
                  padding: const EdgeInsets.all(10.0),
                    child: const Text(style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),'Entradas:'),
                ),
                Expanded(
                  
                  child: ListView(
                  // ignore: prefer_const_literals_to_create_immutables
                    children: ListaTiposEntrada.map((item) =>Card(
                        child: ListTile(
                          leading:Icon(Icons.circle_sharp),
                          title: Text(tipos.fromJson(json.decode(item)).tipo),
                          trailing: Icon(Icons.delete_outline),
                        ),
                      ) ).toList(),
                  ),
                ),
              ])
              ),

              Center(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                // ignore: prefer_const_constructors
                Padding(
                  padding: const EdgeInsets.all(10.0),
                    child: const Text(style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),'Saidas:'),
                ),
                Expanded(
                 
                  child: ListView(
                  // ignore: prefer_const_literals_to_create_immutables
                    children: ListaTiposSaida.map((item) =>Card(
                        child: ListTile(
                          leading:Icon(Icons.circle_sharp),
                          title: Text(tipos.fromJson(json.decode(item)).tipo),
                          trailing: Icon(Icons.delete_outline),
                        ),
                      ) ).toList(),
                  ),
                ),
              ])
              ),
              
            ],
          ),
      ),
    );
  }
}







