// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listagem_pedidos_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ListagemPedidosController = BindInject(
  (i) => ListagemPedidosController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListagemPedidosController on _ListagemPedidosControllerBase, Store {
  final _$valueAtom = Atom(name: '_ListagemPedidosControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_ListagemPedidosControllerBaseActionController =
      ActionController(name: '_ListagemPedidosControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_ListagemPedidosControllerBaseActionController
        .startAction(name: '_ListagemPedidosControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_ListagemPedidosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
