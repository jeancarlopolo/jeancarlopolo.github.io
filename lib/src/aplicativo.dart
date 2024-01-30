//import 'package:meu_portfolio/src/interface_responsiva.dart';
import 'package:meu_portfolio/src/minha_splash.dart';
import 'package:meu_portfolio/src/stores/tema_atual.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:meu_portfolio/src/temas.dart';

class Aplicativo extends StatelessWidget {
  const Aplicativo({super.key, required this.temaStore});

  final TemaStore temaStore;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return MaterialApp(
          title: 'Jean Carlo Polo',
          debugShowCheckedModeBanner: false,
          theme: Temas.claro,
          darkTheme: Temas.escuro,
          themeAnimationCurve: Curves.easeOut,
          themeMode: temaStore.atual,
          //home: InterfaceResponsiva(temaStore: temaStore),
          home: MinhaSplash(temaStore: temaStore),
        );
      },
    );
  }
}
