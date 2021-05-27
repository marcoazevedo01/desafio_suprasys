import 'package:mobx/mobx.dart';
part 'products_model.g.dart';

class ProductModel = _ProductModelBase with _$ProductModel;

abstract class _ProductModelBase with Store {
  _ProductModelBase(
      {this.id,
      this.quantidade,
      this.desconto,
      this.nome,
      this.total,
      this.valor});

  @observable
  int id;
  @observable
  int quantidade;
  @observable
  String nome;
  @observable
  double valor;
  @observable
  double total;
  @observable
  double desconto;

  @action
  setId(int value) => id = value;
  @action
  setQuantidade(int value) => quantidade = value;
  @action
  setNome(String value) => nome = value;
  @action
  setValor(double value) => valor = value;
  @action
  setTotal(double value) => total = value;
  @action
  setDesconto(double value) => desconto = value;
}
