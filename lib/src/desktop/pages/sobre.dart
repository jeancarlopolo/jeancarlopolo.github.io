import 'package:flutter_animate/flutter_animate.dart';
import 'package:meu_portfolio/src/stores/tema_atual.dart';
import 'package:flutter/material.dart';
import 'package:meu_portfolio/src/widgets/texto_introducao.dart';

class SobrePage extends StatelessWidget {
  const SobrePage({super.key, required this.temaStore});

  final TemaStore temaStore;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const TextoIntroducao(),
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

