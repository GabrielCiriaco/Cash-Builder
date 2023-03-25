// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Menu extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Drawer(
      
      child:ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ), 
          child: null,
          ),
          ListTile(
            onTap:()=> Navigator.of(context).pushNamed('/meu-fluxo'),
          leading: Icon(Icons.currency_exchange),
          title: Text('Meu fluxo'),
          ),
          ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Profile'),
          ),
          ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
          ),
        ]  
      )
    );
  }
}