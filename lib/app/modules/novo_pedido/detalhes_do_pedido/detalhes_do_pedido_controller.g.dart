// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detalhes_do_pedido_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $DetalhesDoPedidoController = BindInject(
  (i) => DetalhesDoPedidoController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DetalhesDoPedidoController on _DetalhesDoPedidoControllerBase, Store {
  final _$valueAtom = Atom(name: '_DetalhesDoPedidoControllerBase.value');

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

  final _$_DetalhesDoPedidoControllerBaseActionController =
      ActionController(name: '_DetalhesDoPedidoControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_DetalhesDoPedidoControllerBaseActionController
        .startAction(name: '_DetalhesDoPedidoControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_DetalhesDoPedidoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
