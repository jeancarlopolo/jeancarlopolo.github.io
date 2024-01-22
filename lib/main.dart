import 'package:curriculo/src/aplicativo.dart';
import 'package:curriculo/src/stores/tema_atual.dart';
import 'package:flutter/material.dart';

void main() {
  final temaStore = TemaAtual();
  runApp(
    Aplicativo(temaStore: temaStore),
  );
}
