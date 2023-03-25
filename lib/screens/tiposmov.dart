// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TiposMov extends StatelessWidget {
  const TiposMov({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meu Fluxo'),
          centerTitle: true,
          bottom: const TabBar(
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
        body: TabBarView(
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
                    children: [
                      Card(
                        child: ListTile(
                          leading:Icon(Icons.circle_sharp),
                          title: Text('asd'),
                          trailing: Icon(Icons.delete_outline),
                        ),
                      )
                    ],
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
                      fontWeight: FontWeight.bold),'Entradas:'),
                ),
                Expanded(
                 
                  child: ListView(
                  // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Card(
                        child: ListTile(
                          leading:Icon(Icons.circle_sharp),
                          title: Text('asd'),
                          trailing: Icon(Icons.delete_outline),
                        ),
                      )
                    ],
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







