// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gnav_tab_atual.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GnavTabAtual on GnavTabAtualBase, Store {
  late final _$tabAtualAtom =
      Atom(name: 'GnavTabAtualBase.tabAtual', context: context);

  @override
  int get tabAtual {
    _$tabAtualAtom.reportRead();
    return super.tabAtual;
  }

  @override
  set tabAtual(int value) {
    _$tabAtualAtom.reportWrite(value, super.tabAtual, () {
      super.tabAtual = value;
    });
  }

  late final _$GnavTabAtualBaseActionController =
      ActionController(name: 'GnavTabAtualBase', context: context);

  @override
  void setTabAtual(int atual) {
    final _$actionInfo = _$GnavTabAtualBaseActionController.startAction(
        name: 'GnavTabAtualBase.setTabAtual');
    try {
      return super.setTabAtual(atual);
    } finally {
      _$GnavTabAtualBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tabAtual: ${tabAtual}
    ''';
  }
}
