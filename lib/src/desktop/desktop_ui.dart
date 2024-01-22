import 'package:curriculo/src/stores/tema_atual.dart';
import 'package:curriculo/src/widgets/botao_tema.dart';
import 'package:flutter/material.dart';

class DesktopUI extends StatelessWidget {
  const DesktopUI({super.key, required this.temaStore});

  final TemaAtual temaStore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desktop'),
      ),
      body: Center(
        child: BotaoTema(
          temaStore: temaStore,
        ),
      ),
    );
  }
}
