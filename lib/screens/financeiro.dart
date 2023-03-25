
// ignore_for_file: prefer_const_constructors
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class Financeiro extends StatefulWidget{
  @override
  State<Financeiro> createState() => _FinanceiroState();
}

class _FinanceiroState extends State<Financeiro> {
  late double saldoFinal;

  void getSaldo() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      saldoFinal = (prefs.getDouble('Saldo')?? 0);
      
    });
  }
  
  @override
  void initState() {
    getSaldo();
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    
    return Container(
      height: 150,
      width: double.infinity,
      
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.vertical(top:Radius.zero, bottom: Radius.circular(30)),
        boxShadow: [
          BoxShadow(blurRadius: 10.0,),],
      ),
      
      child: Container(
        padding: EdgeInsets.symmetric(horizontal:25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(  
              width: double.infinity,
              child:Text(
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
                'Seu capital:'),
            ),
            
            // ignore: prefer_const_literals_to_create_immutables
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
              Text(
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),'R\$ $saldoFinal'),
              Icon(Icons.visibility,
              size: 40.0,
              color: Colors.white)
            ],),

            OutlinedButton(
              onPressed: () { Navigator.of(context).pushNamed('/extrato'); },
                    style: OutlinedButton.styleFrom(
    side: BorderSide(width: 3.0, color: Colors.white),),
              child: Text(style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),'Ver Extrato'),
                    )
          ]),
      ),
    );
  }
}