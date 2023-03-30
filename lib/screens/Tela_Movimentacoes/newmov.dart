import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewMov extends StatefulWidget {
  const NewMov({super.key});

  @override
  State<NewMov> createState() => _NewMovState();
}

class _NewMovState extends State<NewMov> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          TextField(
            obscureText: true,
            decoration: InputDecoration(
            labelText:'Tipo'
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
            labelText:'Titulo'
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
            labelText:'Valor'
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
            labelText:'Desc'
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
            labelText:'Data'
            ),
          )
        ],
      ) ,
    );
  }
}