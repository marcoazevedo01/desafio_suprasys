// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kart_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$KartController on _KartControllerBase, Store {
  final _$totalKartAtom = Atom(name: '_KartControllerBase.totalKart');

  @override
  double get totalKart {
    _$totalKartAtom.reportRead();
    return super.totalKart;
  }

  @override
  set totalKart(double value) {
    _$totalKartAtom.reportWrite(value, super.totalKart, () {
      super.totalKart = value;
    });
  }

  final _$_KartControllerBaseActionController =
      ActionController(name: '_KartControllerBase');

  @override
  void updateTotal(List<dynamic> list) {
    final _$actionInfo = _$_KartControllerBaseActionController.startAction(
        name: '_KartControllerBase.updateTotal');
    try {
      return super.updateTotal(list);
    } finally {
      _$_KartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic closeKart() {
    final _$actionInfo = _$_KartControllerBaseActionController.startAction(
        name: '_KartControllerBase.closeKart');
    try {
      return super.closeKart();
    } finally {
      _$_KartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearTotal() {
    final _$actionInfo = _$_KartControllerBaseActionController.startAction(
        name: '_KartControllerBase.clearTotal');
    try {
      return super.clearTotal();
    } finally {
      _$_KartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
totalKart: ${totalKart}
    ''';
  }
}
