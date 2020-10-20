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
  final _$selecionadosAtom =
      Atom(name: '_InformarItensDoPedidoControllerBase.selecionados');

  @override
  ObservableList<ProdutoModel> get selecionados {
    _$selecionadosAtom.reportRead();
    return super.selecionados;
  }

  @override
  set selecionados(ObservableList<ProdutoModel> value) {
    _$selecionadosAtom.reportWrite(value, super.selecionados, () {
      super.selecionados = value;
    });
  }

  final _$_InformarItensDoPedidoControllerBaseActionController =
      ActionController(name: '_InformarItensDoPedidoControllerBase');

  @override
  dynamic addItem(ProdutoModel value) {
    final _$actionInfo = _$_InformarItensDoPedidoControllerBaseActionController
        .startAction(name: '_InformarItensDoPedidoControllerBase.addItem');
    try {
      return super.addItem(value);
    } finally {
      _$_InformarItensDoPedidoControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  bool itemExiste(ProdutoModel value) {
    final _$actionInfo = _$_InformarItensDoPedidoControllerBaseActionController
        .startAction(name: '_InformarItensDoPedidoControllerBase.itemExiste');
    try {
      return super.itemExiste(value);
    } finally {
      _$_InformarItensDoPedidoControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selecionados: ${selecionados}
    ''';
  }
}
