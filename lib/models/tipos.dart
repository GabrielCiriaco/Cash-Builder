class tipos{

  String tipo;
  double valor;
  

  tipos({
    required this.tipo,
    required this.valor,
    
  });

  factory tipos.fromJson(Map<String, dynamic> json) {
    return tipos(
      tipo : json["tipo"],
      valor : json["valor"],
    );
  }

  Map<String,dynamic> toJson(){
    Map<String, dynamic> jsonvar = <String, dynamic>{};
    jsonvar["tipo"] = tipo;
    jsonvar["valor"] = valor;
    return jsonvar;
  }

}