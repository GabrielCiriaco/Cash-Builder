class movimentacao{

  String tipo;
  String titulo;
  String descricao;
  double valor;
  String data;
  String id;

  movimentacao({
    required this.tipo,
    required this.titulo,
    required this.descricao,
    required this.valor,
    required this.data,
    required this.id,
  });

  factory movimentacao.fromJson(Map<String, dynamic> json) {
    return movimentacao(
      tipo : json["tipo"],
      titulo: json["titulo"],
      descricao : json["descricao"],
      valor : json["valor"],
      data : json["data"],
      id: json["id"],
    );
  }

  Map<String,dynamic> toJson(){
    Map<String, dynamic> jsonvar = <String, dynamic>{};
    jsonvar["tipo"] = tipo;
    jsonvar["titulo"] = titulo;
    jsonvar["descricao"] = descricao;
    jsonvar["valor"] = valor;
    jsonvar["data"] = data;
    jsonvar["id"] = id;

    return jsonvar;
  }

}