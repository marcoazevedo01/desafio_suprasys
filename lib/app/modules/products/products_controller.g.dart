// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProductsController on _ProductsControllerBase, Store {
  final _$productListAtom = Atom(name: '_ProductsControllerBase.productList');

  @override
  ObservableList<dynamic> get productList {
    _$productListAtom.reportRead();
    return super.productList;
  }

  @override
  set productList(ObservableList<dynamic> value) {
    _$productListAtom.reportWrite(value, super.productList, () {
      super.productList = value;
    });
  }

  final _$itensAtom = Atom(name: '_ProductsControllerBase.itens');

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

  final _$getProductsAsyncAction =
      AsyncAction('_ProductsControllerBase.getProducts');

  @override
  Future getProducts() {
    return _$getProductsAsyncAction.run(() => super.getProducts());
  }

  final _$_ProductsControllerBaseActionController =
      ActionController(name: '_ProductsControllerBase');

  @override
  void addProduct(int id) {
    final _$actionInfo = _$_ProductsControllerBaseActionController.startAction(
        name: '_ProductsControllerBase.addProduct');
    try {
      return super.addProduct(id);
    } finally {
      _$_ProductsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeProduct(int id) {
    final _$actionInfo = _$_ProductsControllerBaseActionController.startAction(
        name: '_ProductsControllerBase.removeProduct');
    try {
      return super.removeProduct(id);
    } finally {
      _$_ProductsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearList() {
    final _$actionInfo = _$_ProductsControllerBaseActionController.startAction(
        name: '_ProductsControllerBase.clearList');
    try {
      return super.clearList();
    } finally {
      _$_ProductsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
productList: ${productList},
itens: ${itens}
    ''';
  }
}
