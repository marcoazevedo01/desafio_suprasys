import 'package:mobx/mobx.dart';
part 'kart_controller.g.dart';

class KartController = _KartControllerBase with _$KartController;

abstract class _KartControllerBase with Store {
  @observable
  List kart = [];

  @observable
  int itens = 0;

  @action
  void addProduct(int id) {
    if ((kart.isNotEmpty) && ([...kart].any((el) => el['id'] == id))) {
      var prod = [...kart].firstWhere((el) => el['id'] == id);
      prod['qnt']++;
    } else { 
      itens++;
      kart.add({'id': id, 'qnt': 1});
    }
    print(kart);
  }

  @action
  void removeProduct(int id) {
    var prod = [...kart].firstWhere((el) => el['id'] == id);
    if ((itens > 0) && (prod['qnt'] > 1)) {
      prod['qnt']--;
    } else { 
      itens--;
      kart.removeWhere((elem) => elem['id'] == id);
    }
    print(kart);
  }
}
