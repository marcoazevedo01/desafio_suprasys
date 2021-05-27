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
  void closeKart() {
    
  }

  @action
  void clearTotal() {
    totalKart = 0;
  }
}
