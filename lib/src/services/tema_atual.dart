import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class TemaAtual {
  final atual = signal(ThemeMode.light);


  void trocarTema() {
    if (atual.value == ThemeMode.dark) {
      atual.value = ThemeMode.light;
    } else {
      atual.value = ThemeMode.dark;
    }
  }
}
