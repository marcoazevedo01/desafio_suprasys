import 'package:mobx/mobx.dart';
part 'kart_controller.g.dart';

class KartController = _KartControllerBase with _$KartController;

abstract class _KartControllerBase with Store {
  @observable
  Map kart = {};

  @observable
  int itens = 0;

  @observable
  int qnt = 0;

  @action
  void addProduct(int id) {
    if (kart['id'] == null) {
      itens++;
    }
    qnt++;
    kart['id'] = id;
    kart['qnt'] = qnt;
    print(kart);
  }

  @action
  void removeProduct(int id) {
    if (qnt == 0) {
      itens--;
    } else {
      qnt--;
      kart['id'] = id;
      kart['qnt'] = qnt;
      print(kart);
    }
  }

/* estrutura q preciso
  var obj = {'id': 0,'qnt':0}
  acessar percorrer e para att a qnt
*/

}
