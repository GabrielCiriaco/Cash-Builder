import 'package:flutter/material.dart';
import '../models/movimentacao.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class DataCenter with ChangeNotifier{
   
   late final SharedPreferences prefs; 
   late double saldoFinal;
   late List <String>listaMovimentacoes; 

   DataCenter(){
    initPrefs();
   }

  Future<void> initPrefs() async {
  prefs = await SharedPreferences.getInstance();

  saldoFinal = prefs.getDouble('Saldo')?? 0;
  listaMovimentacoes = (prefs.getStringList('movimentacoes')?? []);
  notifyListeners();

}

  void insereTransaction(movimentacao mov) async{
    //mov.id = Uuid().v1();
    //mov.titulo = mov.id;
    listaMovimentacoes.add(json.encode(mov.toJson()));
    saldoFinal += mov.valor; 
    await prefs.setStringList('movimentacoes', listaMovimentacoes);

    notifyListeners();
  }

  void removeTransaction(movimentacao mov) async{
    
    listaMovimentacoes.removeWhere((item)=> movimentacao.fromJson(json.decode(item)).id == mov.id);
    await prefs.setStringList('movimentacoes', listaMovimentacoes);
    notifyListeners();
  }


}