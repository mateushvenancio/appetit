// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'informar_itens_do_pedido_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $InformarItensDoPedidoController = BindInject(
  (i) => InformarItensDoPedidoController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$InformarItensDoPedidoController
    on _InformarItensDoPedidoControllerBase, Store {
  final _$valueAtom = Atom(name: '_InformarItensDoPedidoControllerBase.value');

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

  final _$_InformarItensDoPedidoControllerBaseActionController =
      ActionController(name: '_InformarItensDoPedidoControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_InformarItensDoPedidoControllerBaseActionController
        .startAction(name: '_InformarItensDoPedidoControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_InformarItensDoPedidoControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
