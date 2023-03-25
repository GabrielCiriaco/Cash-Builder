import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TiposMov extends StatelessWidget {
  const TiposMov({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Fluxo'),
        centerTitle: true,
      ),
    
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: const Text(style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),'Entradas:'),
            ),
            Card(
              margin: EdgeInsets.all(10),
              child: Container(
                height: MediaQuery.of(context).size.height*0.35,
                child: ListView(
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
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: const Text(style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),'Saidas:'),
            ),
            Card(
              margin: EdgeInsets.all(10),
              child: Container(
                height: MediaQuery.of(context).size.height*0.35,
                child: ListView(
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
            ),
          ]),
      ),
    );
  }
}