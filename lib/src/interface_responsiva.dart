import 'package:meu_portfolio/src/desktop/desktop_ui.dart';
import 'package:meu_portfolio/src/mobile/mobile_ui.dart';
import 'package:meu_portfolio/src/stores/tema_atual.dart';
import 'package:flutter/material.dart';

class InterfaceResponsiva extends StatelessWidget {
  const InterfaceResponsiva({
    super.key,
    required this.temaStore,
  });

  final TemaStore temaStore;

  @override
  Widget build(BuildContext context) {
    return SelectionArea( //agora todo texto é selecionável
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return MobileUI(temaStore: temaStore);
          } else {
            return DesktopUI(temaStore: temaStore);
          }
        },
      ),
    );
  }
}
