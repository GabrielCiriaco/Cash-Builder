import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Creditos extends StatefulWidget {
  const Creditos({super.key});

  @override
  State<Creditos> createState() => _CreditosState();
}

class _CreditosState extends State<Creditos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Créditos'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.amber,
        child: Column(
          children: [Text('data')],
        ),
      ),
    );
  }
}