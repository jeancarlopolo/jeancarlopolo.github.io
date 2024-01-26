import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'tema_atual.g.dart';

class TemaStore = TemaAtualBase with _$TemaAtual;

abstract class TemaAtualBase with Store {
  @observable
  ThemeMode atual = ThemeMode.light;

  @action
  void trocarTema() {
    if (atual == ThemeMode.dark) {
      atual = ThemeMode.light;
    } else {
      atual = ThemeMode.dark;
    }
  }
}
