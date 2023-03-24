// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Botoes extends StatelessWidget{
  get crossAxisCount => null;

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text(style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),'Opções de Controle:'),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
        height: MediaQuery.of(context).size.width*0.55,
        child: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 4,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Card(child:
              Text(''),
              elevation: 5,
              color: Colors.blue,
              ),
      
            Card(child:
            Text(''),
            elevation: 5,
            color: Colors.blue,
            ),
            Card(child:
              Text(''),
              elevation: 5,
              color: Colors.blue,
              ),
      
            Card(child:
            Text(''),
            elevation: 5,
            color: Colors.blue,
            ),
            Card(child:
              Text(''),
              elevation: 5,
              color: Colors.blue,
              ),
      
            Card(child:
            Text(''),
            elevation: 5,
            color: Colors.blue,
            ),
            Card(child:
              Text(''),
              elevation: 5,
              color: Colors.blue,
              ),
      
            Card(child:
            Text(''),
            elevation: 5,
            color: Colors.blue,
            ),
          ],
          ),
        )
      ]
    );
  }
}