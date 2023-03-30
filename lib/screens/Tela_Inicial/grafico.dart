// ignore_for_file: prefer_const_constructors
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';



class Grafico extends StatefulWidget {
  @override
  State<Grafico> createState() => _GraficoState();

}

class _GraficoState extends State<Grafico> {

  late List <DadosGraf> TodosDados;
  
  @override
  void initState(){
    TodosDados = gerarDados();
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
              fontWeight: FontWeight.bold),'Gráfico de Saídas:'),
        ),
        Container(
          height: 450,
          width: double.infinity,
          child: SfCircularChart(
            legend: Legend(isVisible: true,overflowMode: LegendItemOverflowMode.wrap),
            series: [DoughnutSeries(
              dataSource: TodosDados,
              xValueMapper: (dados,_) =>dados.saidas,
              yValueMapper: (dados,_) =>dados.valores,
              dataLabelSettings: DataLabelSettings(isVisible:true) 

          )],),
        ),
      ]
    );
  }

    List<DadosGraf> gerarDados(){
    
    final List<DadosGraf> ConjDados= [
      DadosGraf('Rep', 800),
      DadosGraf('Alimentação', 230),
      DadosGraf('Festa', 840),
      DadosGraf('Saúde', 40),
    ];
    return ConjDados;
  }
}


class DadosGraf{
  DadosGraf(this.saidas,this.valores);
  final String saidas;
  final double valores; 

}