class movimentacao{

  String tipo;
  String titulo;
  String descricao;
  double valor;
  DateTime data;

  movimentacao({
    required this.tipo,
    required this.titulo,
    required this.descricao,
    required this.valor,
    required this.data,
  });

  factory movimentacao.fromJson(Map<String, dynamic> json) {
    return movimentacao(
      tipo : json['tipo'],
      titulo: json['titulo'],
      descricao : json['descricao'],
      valor : json['valor'],
      data : json['data'],
    );
  }

  Map<String,dynamic> toJson(){
    Map<String, dynamic> jsonvar = <String, dynamic>{};
    jsonvar['tipo'] = tipo;
    jsonvar['descricao'] = tipo;
    jsonvar['valor'] = tipo;
    jsonvar['data'] = tipo;

    return jsonvar;
  }

}