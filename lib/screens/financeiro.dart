
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Financeiro extends StatefulWidget{
  @override
  State<Financeiro> createState() => _FinanceiroState();
}

class _FinanceiroState extends State<Financeiro> {
  @override
  Widget build(BuildContext context){
    return Container(
      height: 150,
      width: double.infinity,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 10.0,
          ),
        ],
      ),
    
      
      child: Container(
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal:25),
              child: SizedBox(  
                width: double.infinity,
                child:Text(
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                  'Seu capital:'),
              ),
            ),
            
            // ignore: prefer_const_literals_to_create_immutables
            Row(
              
              // ignore: prefer_const_literals_to_create_immutables
              children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal:25),
                child: Text(
                  style: TextStyle(
                    fontSize: 45,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),'R\$ 1526,30'),
              ),
              Icon(Icons.visibility,
              size: 50.0,
              color: Colors.white)
            ],),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: OutlinedButton(
                onPressed: () {  },
                child: Text(style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),'Ver Extrato'),
                      style: OutlinedButton.styleFrom(
    side: BorderSide(width: 3.0, color: Colors.white),),
                      ),
            )
          ]),
      ),
    );
  }
}