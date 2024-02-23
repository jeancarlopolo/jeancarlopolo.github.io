import 'package:get_it/get_it.dart';
import 'package:meu_portfolio/src/desktop/pages/contato.dart';
import 'package:meu_portfolio/src/desktop/pages/experiencia.dart';
import 'package:meu_portfolio/src/desktop/pages/formacao.dart';
import 'package:meu_portfolio/src/desktop/pages/projetos.dart';
import 'package:meu_portfolio/src/desktop/pages/sobre.dart';
import 'package:meu_portfolio/src/services/gnav_tab_atual.dart';
import 'package:meu_portfolio/src/widgets/interface/barra_tabs.dart';
import 'package:meu_portfolio/src/widgets/interface/botao_tema.dart';
import 'package:meu_portfolio/src/widgets/interface/botoes_tabs.dart';
import 'package:flutter/material.dart';
import 'package:meu_portfolio/src/widgets/interface/texto_inferior.dart';

class DesktopUI extends StatelessWidget {
  const DesktopUI({super.key});
  static const pages = [
    ExperienciaPage(),
    FormacaoPage(),
    SobrePage(),
    ProjetosPage(),
    ContatoPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final tabController = GetIt.I<GnavTabAtual>();

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
          tabController
              .setControllerTabAtual(index); // apertar o botão muda a página
        },
      ),
      floatingActionButton: const Padding(
        padding: EdgeInsets.all(10.0),
        child: BotaoTema(height: 60),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView(
              controller: tabController.controller,
              onPageChanged: (value) => !tabController.estaMovendo
                  ? tabController.tabAtual.value = value
                  : null, // mudar a página muda o botão
              children: pages,
            ),
          ),
          TextoInferior()
        ],
      ),
    );
  }
}
