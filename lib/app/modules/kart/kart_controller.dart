import 'package:desafio_suprasys/app/http_service.dart';
import 'package:desafio_suprasys/app/modules/infoClient/client_controller.dart';
import 'package:desafio_suprasys/app/modules/products/products_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
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
  closeKart() async {
    HttpService httpService = HttpService();
    final productsController = Modular.get<ProductsController>();
    final clientController = Modular.get<ClientController>();
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    var obj = {
      "cliente": {"id": clientController.userClient['id']},
      "data": formatter.format(now),
      "valor": totalKart, //TODO acumular o desconto em outra var
      "desconto": 0,
      "total": totalKart,
      "itens": productsController.formatList()
    };
    var resp = await httpService.post_Obj(obj, '/api/venda/gravar');
    if (resp['status'] == 200) {
      return true;
    } else {
      return null;
    }
  }

  @action
  void clearTotal() {
    totalKart = 0;
  }
}
