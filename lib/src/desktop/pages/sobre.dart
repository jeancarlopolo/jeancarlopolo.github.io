import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:meu_portfolio/src/widgets/sobre/botao_rede.dart';
import 'package:meu_portfolio/src/widgets/sobre/botoes_rede.dart';
import 'package:meu_portfolio/src/widgets/sobre/minha_foto.dart';
import 'package:meu_portfolio/src/widgets/sobre/texto_introducao.dart';

class SobrePage extends StatelessWidget {
  const SobrePage({super.key});


  static const botoes = [
    BotaoRede(
      icone: Bootstrap.linkedin,
      url: 'https://www.linkedin.com/in/jean-carlo-dev/',
    ),
    BotaoRede(
      icone: Bootstrap.github,
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
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 100, horizontal: 25),
            child: MinhaFoto(),
          ),
        )
      ],
    );
  }
}
