import 'package:curriculo/src/constants.dart';
import 'package:curriculo/src/stores/animacao_botao_tema.dart';
import 'package:curriculo/src/stores/tema_atual.dart';
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
        if (animacaoStore.controller!.value == fimAnimacaoBotaoTema ||
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
              minHeight: widget.height * coeficienteBotao,
              minWidth: widget.height * coeficienteBotao,
              maxWidth: widget.height * coeficienteBotao,
              maxHeight: widget.height * coeficienteBotao,
              child: Lottie.asset(
                'assets/botao_tema.json',
                fit: BoxFit.fill,
                controller: animacaoStore.controller,
                onLoaded: (composicao) {
                  animacaoStore.controller = AnimationController(
                    vsync: this,
                    duration: const Duration(milliseconds: 500),
                    reverseDuration: const Duration(milliseconds: 500),
                    animationBehavior: AnimationBehavior.preserve,
                    lowerBound: inicioAnimacaoBotaoTema,
                    upperBound: fimAnimacaoBotaoTema,
                    value: widget.temaStore.atual == ThemeMode.light
                        ? fimAnimacaoBotaoTema
                        : inicioAnimacaoBotaoTema,
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
