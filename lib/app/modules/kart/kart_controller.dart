import 'dart:convert';

import 'package:desafio_suprasys/app/http_service.dart';
import 'package:desafio_suprasys/app/modules/infoClient/client_controller.dart';
import 'package:desafio_suprasys/app/modules/products/products_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'kart_controller.g.dart';

class KartController = _KartControllerBase with _$KartController;

abstract class _KartControllerBase with Store {
  @observable
  double totalKart = 0;

  @action
  void updateTotal(List list) {
    clearTotal();
    list.forEach((element) {
      if (element.quantidade != 0) {
        totalKart += element.total;
      }
    });
  }

  @action
  closeKart() {
    HttpService httpService = HttpService();
    final kartController = Modular.get<KartController>();
    final productsController = Modular.get<ProductsController>();
    final clientController = Modular.get<ClientController>();
    print(jsonEncode(productsController.formatList()));
    var obj = {
      "cliente": {"id": clientController.userClient['id']},
      "data": "2021-05-23",
      "valor": kartController.totalKart, //TODO acumular o desconto em outra var
      "desconto": 0,
      "total": kartController.totalKart,
      "itens": []
    };
    //var resp = await httpService.post_Obj(obj, '/api/venda/gravar');
    //print(obj);
    return false;
  }

  @action
  void clearTotal() {
    totalKart = 0;
  }
}
