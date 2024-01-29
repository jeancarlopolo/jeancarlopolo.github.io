import 'package:flutter_animate/flutter_animate.dart';
import 'package:meu_portfolio/src/stores/tema_atual.dart';
import 'package:flutter/material.dart';
import 'package:meu_portfolio/src/widgets/botao_rede.dart';
import 'package:meu_portfolio/src/widgets/texto_introducao.dart';

class SobrePage extends StatelessWidget {
  const SobrePage({super.key, required this.temaStore});

  final TemaStore temaStore;

  static const links = [
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextoIntroducao(),
              Container(
                alignment: Alignment.center,
                height: 50,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: links.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: links[index]
                          .animate()
                          .moveX(
                              begin: -10,
                              end: 0,
                              curve: Curves.easeOutCubic,
                              duration: 1.seconds,
                              delay: (index + 3).seconds)
                          .fadeIn(
                              duration: 1.seconds, delay: (index + 3).seconds),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        Flexible(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              'assets/foto_jean.png',
            )
                .animate()
                .slideX(
                    begin: 5,
                    end: 0,
                    curve: Curves.easeOutCubic,
                    duration: const Duration(seconds: 3))
                .fadeIn(
                    delay: const Duration(milliseconds: 2500),
                    duration: const Duration(seconds: 2)),
          ),
        )
      ],
    );
  }
}
