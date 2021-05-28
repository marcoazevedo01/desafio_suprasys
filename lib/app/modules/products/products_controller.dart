import 'dart:async';

import 'package:desafio_suprasys/app/http_service.dart';
import 'package:desafio_suprasys/app/modules/kart/kart_controller.dart';
import 'package:desafio_suprasys/app/modules/products/products_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'products_controller.g.dart';

class ProductsController = _ProductsControllerBase with _$ProductsController;

abstract class _ProductsControllerBase with Store {
  HttpService httpService = HttpService();
  final kartController = Modular.get<KartController>();

  @observable
  ObservableList productList = [].asObservable();

  @observable
  int itens = 0;

  @action
  getProducts() async {
    List arrayProducts = await httpService.get_service('/api/produto/listar');
    arrayProducts.forEach((prod) {
      productList.add(ProductModel(
          id: prod['id'],
          quantidade: 0,
          desconto: prod['desconto'],
          nome: prod['nome'],
          total: 0,
          valor: prod['valor']));
    });
  }

  @action
  void addProduct(int id) {
    var prod = [...productList].firstWhere((el) => el.id == id);
    if (prod.quantidade == 0) {
      itens++;
    }
    prod.quantidade++;
    prod.total = (prod.valor-prod.desconto)*prod.quantidade;
    kartController.updateTotal(productList);
  }

  @action
  void removeProduct(int id) {
    var prod = [...productList].firstWhere((el) => el.id == id);
    if ((itens > 0) && (prod.quantidade > 0)) {
      prod.quantidade--;
      prod.total = (prod.valor-prod.desconto)*prod.quantidade;
      kartController.updateTotal(productList);
      if (prod.quantidade == 0) {
        if (Modular.to.path == '/kart') {
          Modular.to.popAndPushNamed('kart');//TODO fazer a att no proprio widget
        }
        itens--;
      }
    }
  }

  @action
  formatList() {
    var arry = [];
    for(var elem in productList.where((el) => el.quantidade != 0)){
      arry.add({
        "produto":{"id":elem.id},
        "quantidade": elem.quantidade,
        "valor": elem.valor,
        "desconto": elem.desconto,
        "total": elem.total
      }); 
    }
    return arry;
  }

  @action
  void clearList() {
    productList.clear();
    kartController.clearTotal();
    itens = 0;
  }
}
