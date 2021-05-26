// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kart_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$KartController on _KartControllerBase, Store {
  final _$kartAtom = Atom(name: '_KartControllerBase.kart');

  @override
  List<dynamic> get kart {
    _$kartAtom.reportRead();
    return super.kart;
  }

  @override
  set kart(List<dynamic> value) {
    _$kartAtom.reportWrite(value, super.kart, () {
      super.kart = value;
    });
  }

  final _$itensAtom = Atom(name: '_KartControllerBase.itens');

  @override
  int get itens {
    _$itensAtom.reportRead();
    return super.itens;
  }

  @override
  set itens(int value) {
    _$itensAtom.reportWrite(value, super.itens, () {
      super.itens = value;
    });
  }

  final _$_KartControllerBaseActionController =
      ActionController(name: '_KartControllerBase');

  @override
  void addProduct(int id) {
    final _$actionInfo = _$_KartControllerBaseActionController.startAction(
        name: '_KartControllerBase.addProduct');
    try {
      return super.addProduct(id);
    } finally {
      _$_KartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeProduct(int id) {
    final _$actionInfo = _$_KartControllerBaseActionController.startAction(
        name: '_KartControllerBase.removeProduct');
    try {
      return super.removeProduct(id);
    } finally {
      _$_KartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
kart: ${kart},
itens: ${itens}
    ''';
  }
}
