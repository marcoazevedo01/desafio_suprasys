// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ClientController on _ClientControllerBase, Store {
  final _$userClientAtom = Atom(name: '_ClientControllerBase.userClient');

  @override
  Map<dynamic, dynamic> get userClient {
    _$userClientAtom.reportRead();
    return super.userClient;
  }

  @override
  set userClient(Map<dynamic, dynamic> value) {
    _$userClientAtom.reportWrite(value, super.userClient, () {
      super.userClient = value;
    });
  }

  final _$_ClientControllerBaseActionController =
      ActionController(name: '_ClientControllerBase');

  @override
  void setUser(int id, String nome) {
    final _$actionInfo = _$_ClientControllerBaseActionController.startAction(
        name: '_ClientControllerBase.setUser');
    try {
      return super.setUser(id, nome);
    } finally {
      _$_ClientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userClient: ${userClient}
    ''';
  }
}
