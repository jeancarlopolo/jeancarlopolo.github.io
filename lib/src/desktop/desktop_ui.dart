import 'package:meu_portfolio/src/desktop/pages/contato.dart';
import 'package:meu_portfolio/src/desktop/pages/experiencia.dart';
import 'package:meu_portfolio/src/desktop/pages/formacao.dart';
import 'package:meu_portfolio/src/desktop/pages/projetos.dart';
import 'package:meu_portfolio/src/desktop/pages/sobre.dart';
import 'package:meu_portfolio/src/stores/gnav_tab_atual.dart';
import 'package:meu_portfolio/src/widgets/barra_tabs.dart';
import 'package:meu_portfolio/src/stores/tema_atual.dart';
import 'package:meu_portfolio/src/widgets/botao_tema.dart';
import 'package:meu_portfolio/src/widgets/botoes_tabs.dart';
import 'package:flutter/material.dart';
import 'package:meu_portfolio/src/widgets/texto_inferior.dart';

class DesktopUI extends StatelessWidget {
  const DesktopUI({super.key, required this.temaStore});
  final TemaStore temaStore;
  static final tabStore = GnavTabAtual();

  @override
  Widget build(BuildContext context) {
    final pages = [
      const ExperienciaPage(),
      const FormacaoPage(),
      SobrePage(
        temaStore: temaStore,
      ),
      const ProjetosPage(),
      const ContatoPage(),
    ];
    return Scaffold(
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
          tabStore.setControllerTabAtual(index); // apertar o botão muda a página

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView(
              controller: tabStore.controller,
              onPageChanged: (value) => !tabStore.estaMovendo ? tabStore.setTabAtual(value) : null, // mudar a página muda o botão
              children: pages,
            ),
          ),
          TextoInferior()
        ],
      ),
    );
  }
}
