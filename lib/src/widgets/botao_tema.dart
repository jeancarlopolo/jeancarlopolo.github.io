import 'package:curriculo/src/stores/animacao_botao_tema.dart';
import 'package:curriculo/src/stores/tema_atual.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

// o stateful widget é pra gerenciar o ticker, não consegui fazer só usando o mobx
class BotaoTema extends StatefulWidget {
  const BotaoTema(
      {super.key, this.width, this.height, required this.temaStore});

  final double? width, height;
  final TemaAtual temaStore;

  @override
  State<BotaoTema> createState() => _BotaoTemaState();
}

class _BotaoTemaState extends State<BotaoTema>
    with SingleTickerProviderStateMixin {
  static final animacaoStore = AnimacaoBotaoTema();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Observer(
        builder: (_) => SizedBox(
          width: widget.width,
          height: widget.height,
          child: Lottie.asset(
            'assets/botao_tema.json',
            controller: animacaoStore.controller,
            onLoaded: (composicao) {
              animacaoStore.controller = AnimationController(
                vsync: this,
                duration: const Duration(milliseconds: 500),
                reverseDuration: const Duration(milliseconds: 500),
                animationBehavior: AnimationBehavior.preserve,
                lowerBound: 40 / 134,
                upperBound: 80 / 134,
                value: widget.temaStore.atual == ThemeMode.light
                    ? 80 / 134
                    : 40 / 134,
              );
            },
          ),
        ),
      ),
      onTap: () {
        if (animacaoStore.controller!.value == 80 / 134 ||
            animacaoStore.controller!.velocity > 0) {
          animacaoStore.ficarClaro();
        } else {
          animacaoStore.ficarEscuro();
        }
        widget.temaStore.trocarTema();
      },
    );
  }
}
