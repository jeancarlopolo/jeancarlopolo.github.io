import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:meu_portfolio/src/widgets/sobre/botao_rede.dart';

class BotoesRede extends StatelessWidget {
  const BotoesRede({
    super.key,
    required this.botoes,
  });

  final List<BotaoRede> botoes;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: botoes.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return MouseRegion(
            cursor: SystemMouseCursors.click,
            child: botoes[index]
                .animate()
                .moveX(
                    begin: (-30 * (botoes.length + 1 - index)).toDouble(),
                    end: 0,
                    curve: Curves.easeOutCubic,
                    duration: 1.seconds,
                    delay: (index + 3).seconds)
                .fadeIn(
                    duration: 1.seconds,
                    curve: Curves.easeOutCubic,
                    delay: (index * 0.75 + 3.5).seconds),
          );
        },
      ),
    );
  }
}
