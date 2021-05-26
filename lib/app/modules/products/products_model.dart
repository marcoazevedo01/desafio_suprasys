import 'dart:ffi';

class Products {
  int id;
  int quantidade;
  String nome;
  Float valor;
  Float total;

  Products({this.id, this.quantidade,this.nome, this.total, this.valor});

  factory Products.fromJson(Map doc){
    return Products(
      id: doc['id'],
      quantidade: doc['quantidade'],
      nome: doc['nome'],
      valor: doc['valor'],
      total: doc['total'],
    );
  }
}
