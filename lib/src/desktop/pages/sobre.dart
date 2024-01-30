import 'package:meu_portfolio/src/stores/tema_atual.dart';
import 'package:flutter/material.dart';
import 'package:meu_portfolio/src/widgets/botao_rede.dart';
import 'package:meu_portfolio/src/widgets/botoes_rede.dart';
import 'package:meu_portfolio/src/widgets/minha_foto.dart';
import 'package:meu_portfolio/src/widgets/texto_introducao.dart';

class SobrePage extends StatelessWidget {
  const SobrePage({super.key, required this.temaStore});

  final TemaStore temaStore;

  static const botoes = [
    BotaoRede(
      icone: 'assets/icone_linkedin.svg',
      url: 'https://www.linkedin.com/in/jean-carlo-dev/',
    ),
    BotaoRede(
      icone: 'assets/icone_github.svg',
      url: 'https://github.com/jeancarlopolo',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextoIntroducao(),
              BotoesRede(botoes: botoes),
            ],
          ),
        ),
        Expanded(
          child: MinhaFoto(),
        )
      ],
    );
  }
}
