// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selecionar_cliente_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $SelecionarClienteController = BindInject(
  (i) => SelecionarClienteController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SelecionarClienteController on _SelecionarClienteControllerBase, Store {
  Computed<int> _$quantidadeSelecionadosComputed;

  @override
  int get quantidadeSelecionados => (_$quantidadeSelecionadosComputed ??=
          Computed<int>(() => super.quantidadeSelecionados,
              name: '_SelecionarClienteControllerBase.quantidadeSelecionados'))
      .value;

  final _$selecionadosAtom =
      Atom(name: '_SelecionarClienteControllerBase.selecionados');

  @override
  ObservableList<ClienteModel> get selecionados {
    _$selecionadosAtom.reportRead();
    return super.selecionados;
  }

  @override
  set selecionados(ObservableList<ClienteModel> value) {
    _$selecionadosAtom.reportWrite(value, super.selecionados, () {
      super.selecionados = value;
    });
  }

  final _$_SelecionarClienteControllerBaseActionController =
      ActionController(name: '_SelecionarClienteControllerBase');

  @override
  dynamic addCliente(ClienteModel cliente) {
    final _$actionInfo = _$_SelecionarClienteControllerBaseActionController
        .startAction(name: '_SelecionarClienteControllerBase.addCliente');
    try {
      return super.addCliente(cliente);
    } finally {
      _$_SelecionarClienteControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeCliente(ClienteModel cliente) {
    final _$actionInfo = _$_SelecionarClienteControllerBaseActionController
        .startAction(name: '_SelecionarClienteControllerBase.removeCliente');
    try {
      return super.removeCliente(cliente);
    } finally {
      _$_SelecionarClienteControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selecionados: ${selecionados},
quantidadeSelecionados: ${quantidadeSelecionados}
    ''';
  }
}
