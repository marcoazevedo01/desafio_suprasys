// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProductModel on _ProductModelBase, Store {
  final _$idAtom = Atom(name: '_ProductModelBase.id');

  @override
  int get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(int value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  final _$quantidadeAtom = Atom(name: '_ProductModelBase.quantidade');

  @override
  int get quantidade {
    _$quantidadeAtom.reportRead();
    return super.quantidade;
  }

  @override
  set quantidade(int value) {
    _$quantidadeAtom.reportWrite(value, super.quantidade, () {
      super.quantidade = value;
    });
  }

  final _$nomeAtom = Atom(name: '_ProductModelBase.nome');

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  final _$valorAtom = Atom(name: '_ProductModelBase.valor');

  @override
  double get valor {
    _$valorAtom.reportRead();
    return super.valor;
  }

  @override
  set valor(double value) {
    _$valorAtom.reportWrite(value, super.valor, () {
      super.valor = value;
    });
  }

  final _$totalAtom = Atom(name: '_ProductModelBase.total');

  @override
  double get total {
    _$totalAtom.reportRead();
    return super.total;
  }

  @override
  set total(double value) {
    _$totalAtom.reportWrite(value, super.total, () {
      super.total = value;
    });
  }

  final _$descontoAtom = Atom(name: '_ProductModelBase.desconto');

  @override
  double get desconto {
    _$descontoAtom.reportRead();
    return super.desconto;
  }

  @override
  set desconto(double value) {
    _$descontoAtom.reportWrite(value, super.desconto, () {
      super.desconto = value;
    });
  }

  final _$_ProductModelBaseActionController =
      ActionController(name: '_ProductModelBase');

  @override
  dynamic setId(int value) {
    final _$actionInfo = _$_ProductModelBaseActionController.startAction(
        name: '_ProductModelBase.setId');
    try {
      return super.setId(value);
    } finally {
      _$_ProductModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setQuantidade(int value) {
    final _$actionInfo = _$_ProductModelBaseActionController.startAction(
        name: '_ProductModelBase.setQuantidade');
    try {
      return super.setQuantidade(value);
    } finally {
      _$_ProductModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNome(String value) {
    final _$actionInfo = _$_ProductModelBaseActionController.startAction(
        name: '_ProductModelBase.setNome');
    try {
      return super.setNome(value);
    } finally {
      _$_ProductModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setValor(double value) {
    final _$actionInfo = _$_ProductModelBaseActionController.startAction(
        name: '_ProductModelBase.setValor');
    try {
      return super.setValor(value);
    } finally {
      _$_ProductModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTotal(double value) {
    final _$actionInfo = _$_ProductModelBaseActionController.startAction(
        name: '_ProductModelBase.setTotal');
    try {
      return super.setTotal(value);
    } finally {
      _$_ProductModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDesconto(double value) {
    final _$actionInfo = _$_ProductModelBaseActionController.startAction(
        name: '_ProductModelBase.setDesconto');
    try {
      return super.setDesconto(value);
    } finally {
      _$_ProductModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
id: ${id},
quantidade: ${quantidade},
nome: ${nome},
valor: ${valor},
total: ${total},
desconto: ${desconto}
    ''';
  }
}
