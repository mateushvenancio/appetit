// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedido_finalizado_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $PedidoFinalizadoController = BindInject(
  (i) => PedidoFinalizadoController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PedidoFinalizadoController on _PedidoFinalizadoControllerBase, Store {
  final _$valueAtom = Atom(name: '_PedidoFinalizadoControllerBase.value');

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

  final _$_PedidoFinalizadoControllerBaseActionController =
      ActionController(name: '_PedidoFinalizadoControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_PedidoFinalizadoControllerBaseActionController
        .startAction(name: '_PedidoFinalizadoControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_PedidoFinalizadoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
