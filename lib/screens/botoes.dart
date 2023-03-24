// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Botoes extends StatelessWidget{
  get crossAxisCount => null;

  @override
  Widget build(BuildContext context){
    return Container(
      color: Color(0xAAAAAAAA),
      height: 1000,
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        children: [
          Card(child:
            Text('data')
            ),
    
          Card(child:
          Text('asdasd')
          )
        ],
        ),
    );
  }
}