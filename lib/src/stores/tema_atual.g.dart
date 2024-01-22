// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tema_atual.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TemaAtual on TemaAtualBase, Store {
  late final _$atualAtom = Atom(name: 'TemaAtualBase.atual', context: context);

  @override
  ThemeMode get atual {
    _$atualAtom.reportRead();
    return super.atual;
  }

  @override
  set atual(ThemeMode value) {
    _$atualAtom.reportWrite(value, super.atual, () {
      super.atual = value;
    });
  }

  late final _$TemaAtualBaseActionController =
      ActionController(name: 'TemaAtualBase', context: context);

  @override
  void trocarTema() {
    final _$actionInfo = _$TemaAtualBaseActionController.startAction(
        name: 'TemaAtualBase.trocarTema');
    try {
      return super.trocarTema();
    } finally {
      _$TemaAtualBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
atual: ${atual}
    ''';
  }
}
