import 'package:flutter_animate/flutter_animate.dart';
import 'package:get_it/get_it.dart';
import 'package:meu_portfolio/src/app/constants.dart';
import 'package:meu_portfolio/src/services/tema_atual.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// o stateful widget é pra gerenciar o ticker, não consegui fazer só usando o mobx
class BotaoTema extends StatefulWidget {
  const BotaoTema({super.key, this.height = 200});

  final double height;

  @override
  State<BotaoTema> createState() => _BotaoTemaState();
}

class _BotaoTemaState extends State<BotaoTema>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    controller = AnimationController(
                  vsync: this,
                  animationBehavior: AnimationBehavior.preserve,
                  duration: 0.5.seconds,
                  lowerBound: Constantes.inicioAnimacaoBotaoTema,
                  upperBound: Constantes.fimAnimacaoBotaoTema,
                  value: GetIt.I<TemaAtual>().atual.value == ThemeMode.light
                      ? Constantes.fimAnimacaoBotaoTema
                      : Constantes.inicioAnimacaoBotaoTema,
                );
                
    return GestureDetector(
      onTap: () {
        if (controller.value == Constantes.fimAnimacaoBotaoTema ||
            controller.velocity > 0) {
          controller.reverse();
        } else {
          controller.forward();
        }
        GetIt.I<TemaAtual>().trocarTema();
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          alignment: Alignment.center,
          height: widget.height,
          width: widget.height,
          child: OverflowBox(
            minHeight: widget.height * Constantes.coeficienteBotao,
            minWidth: widget.height * Constantes.coeficienteBotao,
            maxWidth: widget.height * Constantes.coeficienteBotao,
            maxHeight: widget.height * Constantes.coeficienteBotao,
            child: Lottie.asset(
              'assets/botao_tema.json',
              frameRate: FrameRate.composition,
              fit: BoxFit.fill,
              controller: controller,
            ),
          ),
        ),
      ),
    );
  }
}
