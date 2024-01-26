import 'package:curriculo/src/desktop/pages/contato.dart';
import 'package:curriculo/src/desktop/pages/experiencia.dart';
import 'package:curriculo/src/desktop/pages/formacao.dart';
import 'package:curriculo/src/desktop/pages/projetos.dart';
import 'package:curriculo/src/desktop/pages/sobre.dart';
import 'package:curriculo/src/stores/gnav_tab_atual.dart';
import 'package:curriculo/src/widgets/barra_tabs.dart';
import 'package:curriculo/src/stores/tema_atual.dart';
import 'package:curriculo/src/widgets/botao_tema.dart';
import 'package:curriculo/src/widgets/gnav_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class DesktopUI extends StatelessWidget {
  const DesktopUI({super.key, required this.temaStore});
  final TemaAtual temaStore;
  static final tabStore = GnavTabAtual();

  static const pages = [
    ExperienciaPage(),
    FormacaoPage(),
    SobrePage(),
    ProjetosPage(),
    ContatoPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => Scaffold(
        appBar: BarraTabs(
          tabs: [
            criarGButton(
              icon: Icons.work_rounded,
              text: 'experiência',
              context: context,
            ),
            criarGButton(
              icon: Icons.school,
              text: 'formação',
              context: context,
            ),
            criarGButton(
              icon: Icons.person_rounded,
              text: 'sobre mim',
              context: context,
            ),
            criarGButton(
              icon: Icons.rocket_launch_rounded,
              text: 'projetos',
              context: context,
            ),
            criarGButton(
              icon: Icons.chat_rounded,
              text: 'fale comigo!',
              context: context,
            ),
          ],
          onTabChange: (index) {
            tabStore.setTabAtual(index);
          },
          tabStore: tabStore,
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(10.0),
          child: BotaoTema(
            height: 60,
            temaStore: temaStore,
          ),
        ),
        body: pages[tabStore.tabAtual],
      ),
    );
  }
}
