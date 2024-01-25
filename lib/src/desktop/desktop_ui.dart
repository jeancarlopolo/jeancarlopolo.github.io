import 'package:curriculo/src/widgets/barra_tabs.dart';
import 'package:curriculo/src/stores/tema_atual.dart';
import 'package:curriculo/src/widgets/botao_tema.dart';
import 'package:curriculo/src/widgets/gnav_buttons.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class DesktopUI extends StatelessWidget {
  const DesktopUI(
      {super.key, required this.temaStore, required this.telaAtual});

  final Widget telaAtual;
  final TemaAtual temaStore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraTabs(
        tabs: [
          criarGButton(
            icon: Icons.person_rounded,
            text: 'sobre mim',
            context: context,
          ),
          criarGButton(
            icon: Icons.person_rounded,
            text: 'sobre mim',
            context: context,
          ),
          criarGButton(
            icon: Icons.person_rounded,
            text: 'sobre mim',
            context: context,
          ),
          criarGButton(
            icon: Icons.person_rounded,
            text: 'sobre mim',
            context: context,
          ),
          criarGButton(
            icon: Icons.person_rounded,
            text: 'sobre mim',
            context: context,
          ),
          
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10.0),
        child: BotaoTema(
          height: 60,
          temaStore: temaStore,
        ),
      ),
      body: telaAtual,
    );
  }
}
