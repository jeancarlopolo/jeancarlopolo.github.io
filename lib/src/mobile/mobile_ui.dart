import 'package:meu_portfolio/src/stores/tema_atual.dart';
import 'package:meu_portfolio/src/widgets/botao_tema.dart';

import 'package:flutter/material.dart';

class MobileUI extends StatelessWidget {
  const MobileUI({super.key, required this.temaStore});

  final TemaStore temaStore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile'),
      ),
      body: Center(
        child: BotaoTema(
          temaStore: temaStore,
        ),
      ),
    );
  }
}
