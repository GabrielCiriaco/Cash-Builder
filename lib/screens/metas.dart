
import 'package:casher/models/meta.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';
import 'dart:convert';


class Metas extends StatefulWidget {
  const Metas({super.key});

  @override
  State<Metas> createState() => _MetasState();
}

class _MetasState extends State<Metas> {
  late final SharedPreferences prefs;
  late List <String>listaMetas; 
  var meta1 = Meta(total: 200, valor: 200,titulo:'asdad',id:Uuid().v1());
  
  
  void getListaMetas() async{
    prefs = await SharedPreferences.getInstance();
    
    //await prefs.setStringList('movimentacoes', []);
    setState(() {
      listaMetas = (prefs.getStringList('Metas')?? []);
    });

  }

  void insereMeta(Meta metaUnit) async{
    setState(() {
      listaMetas.add(json.encode(metaUnit.toJson()));
    });

    await prefs.setStringList('Metas', listaMetas);
  }
  @override
  void initState() {
    getListaMetas();
    // TODO: implement initState
    super.initState();

  }  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Metas'),
        centerTitle: true,

      ),
      
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          insereMeta(meta1);
          },
        label: const Text('Approve'),
        icon: const Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ),

      body: Column(
        children: [Expanded(
          child: ListView(
            children:listaMetas.map((metaUnit){
              return   Card(
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.trip_origin),
                      Text('data')
                    ],
                  ),
                  Text('data'),
                  Row(
                    children: [
                      Container(),
                      Text('data')
                    ],
                  )
                ],
              )
            );
            
            }).toList()
            
          ),
        ),
        ]
      )
    );
  }
}