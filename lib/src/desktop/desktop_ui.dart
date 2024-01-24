import 'package:curriculo/src/widgets/barra_tabs.dart';
import 'package:curriculo/src/desktop/tabs/home.dart';
import 'package:curriculo/src/stores/tema_atual.dart';
import 'package:curriculo/src/widgets/botao_tema.dart';
import 'package:flutter/material.dart';

class DesktopUI extends StatelessWidget {
  const DesktopUI({super.key, required this.temaStore});

  final TemaAtual temaStore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10.0),
        child: BotaoTema(
          height: 60,
          temaStore: temaStore,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 5,),
          BarraTabs(),
          const Expanded(
            child: HomeTab(),
          ),
        ],
      ),
    );
  }
}
