// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';



class Extrato extends StatefulWidget{

  @override
  State<Extrato> createState() => _ExtratoState();
}

class _ExtratoState extends State<Extrato> {
  final controller = TextEditingController();

  
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Extrato'),
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

        Container(
          height: MediaQuery.of(context).size.height*0.7,
          child:ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              ListTile(
                          leading:Icon(Icons.circle_sharp),
                          title: Text('asd'),
                          trailing: Icon(Icons.delete_outline),
                        ),
            ]
          ),


        )

        
      ]),
    );
  }
}