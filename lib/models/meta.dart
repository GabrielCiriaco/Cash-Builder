class Meta{

  double total;
  double valor;
  String titulo;
  String id;
  

  Meta({
    required this.total,
    required this.valor,
    required this.titulo,
    required this.id,


  });

  factory Meta.fromJson(Map<String, dynamic> json) {
    return Meta(
      total : json["total"],
      valor : json["valor"],
      titulo : json["titulo"],
      id : json["id"],
    );
  }

  Map<String,dynamic> toJson(){
    Map<String, dynamic> jsonvar = <String, dynamic>{};
    jsonvar["total"] = total;
    jsonvar["valor"] = valor;
    jsonvar["titulo"] = titulo;
    jsonvar["id"] = id;

    return jsonvar;
  }

}