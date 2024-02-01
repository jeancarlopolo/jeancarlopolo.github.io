import 'package:flutter_animate/flutter_animate.dart';
import 'package:meu_portfolio/src/constants.dart';
import 'package:meu_portfolio/src/stores/animacao_botao_tema.dart';
import 'package:meu_portfolio/src/stores/tema_atual.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

// o stateful widget é pra gerenciar o ticker, não consegui fazer só usando o mobx
class BotaoTema extends StatefulWidget {
  const BotaoTema({super.key, this.height = 200, required this.temaStore});

  final double height;
  final TemaStore temaStore;

  @override
  State<BotaoTema> createState() => _BotaoTemaState();
}

class _BotaoTemaState extends State<BotaoTema>
    with SingleTickerProviderStateMixin {
  static final animacaoStore = AnimacaoBotaoTema();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (animacaoStore.controller!.value == Constantes.fimAnimacaoBotaoTema ||
            animacaoStore.controller!.velocity > 0) {
          animacaoStore.ficarClaro();
        } else {
          animacaoStore.ficarEscuro();
        }
        widget.temaStore.trocarTema();
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Observer(
          builder: (_) => Container(
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
                controller: animacaoStore.controller,
                onLoaded: (composicao) {
                  animacaoStore.controller = AnimationController(
                    vsync: this,
                    animationBehavior: AnimationBehavior.preserve,
                    duration: 0.5.seconds,
                    lowerBound: Constantes.inicioAnimacaoBotaoTema,
                    upperBound: Constantes.fimAnimacaoBotaoTema,
                    value: widget.temaStore.atual == ThemeMode.light
                        ? Constantes.fimAnimacaoBotaoTema
                        : Constantes.inicioAnimacaoBotaoTema,
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
