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
          leading: Icon(Icons.message),
          title: Text('Messages'),
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