// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animacao_botao_tema.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AnimacaoBotaoTema on AnimacaoBotaoTemaBase, Store {
  late final _$controllerAtom =
      Atom(name: 'AnimacaoBotaoTemaBase.controller', context: context);

  @override
  AnimationController? get controller {
    _$controllerAtom.reportRead();
    return super.controller;
  }

  @override
  set controller(AnimationController? value) {
    _$controllerAtom.reportWrite(value, super.controller, () {
      super.controller = value;
    });
  }

  late final _$AnimacaoBotaoTemaBaseActionController =
      ActionController(name: 'AnimacaoBotaoTemaBase', context: context);

  @override
  void ficarEscuro() {
    final _$actionInfo = _$AnimacaoBotaoTemaBaseActionController.startAction(
        name: 'AnimacaoBotaoTemaBase.ficarEscuro');
    try {
      return super.ficarEscuro();
    } finally {
      _$AnimacaoBotaoTemaBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void ficarClaro() {
    final _$actionInfo = _$AnimacaoBotaoTemaBaseActionController.startAction(
        name: 'AnimacaoBotaoTemaBase.ficarClaro');
    try {
      return super.ficarClaro();
    } finally {
      _$AnimacaoBotaoTemaBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
controller: ${controller}
    ''';
  }
}
