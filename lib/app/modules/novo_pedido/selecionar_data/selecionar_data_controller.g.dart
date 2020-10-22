// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selecionar_data_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $SelecionarDataController = BindInject(
  (i) => SelecionarDataController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SelecionarDataController on _SelecionarDataControllerBase, Store {
  Computed<bool> _$isRadioSelectedComputed;

  @override
  bool get isRadioSelected =>
      (_$isRadioSelectedComputed ??= Computed<bool>(() => super.isRadioSelected,
              name: '_SelecionarDataControllerBase.isRadioSelected'))
          .value;

  final _$currentRadioAtom =
      Atom(name: '_SelecionarDataControllerBase.currentRadio');

  @override
  int get currentRadio {
    _$currentRadioAtom.reportRead();
    return super.currentRadio;
  }

  @override
  set currentRadio(int value) {
    _$currentRadioAtom.reportWrite(value, super.currentRadio, () {
      super.currentRadio = value;
    });
  }

  final _$_SelecionarDataControllerBaseActionController =
      ActionController(name: '_SelecionarDataControllerBase');

  @override
  dynamic changeRadius(int value) {
    final _$actionInfo = _$_SelecionarDataControllerBaseActionController
        .startAction(name: '_SelecionarDataControllerBase.changeRadius');
    try {
      return super.changeRadius(value);
    } finally {
      _$_SelecionarDataControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentRadio: ${currentRadio},
isRadioSelected: ${isRadioSelected}
    ''';
  }
}
