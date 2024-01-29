import 'package:meu_portfolio/src/aplicativo.dart';
import 'package:meu_portfolio/src/stores/tema_atual.dart';
import 'package:flutter/material.dart';

void main() {
  final temaStore = TemaStore(); // injeçao de dependências
  runApp(
    Aplicativo(temaStore: temaStore),
  );
}
