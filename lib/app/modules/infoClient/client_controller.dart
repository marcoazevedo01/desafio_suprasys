import 'package:mobx/mobx.dart';
part 'client_controller.g.dart';

class ClientController = _ClientControllerBase with _$ClientController;

abstract class _ClientControllerBase with Store {
  @observable
  Map userClient = {};

  @action
  void setUser(int id, String nome) {
    userClient['id'] = id;
    userClient['nome'] = nome;
  }

}
