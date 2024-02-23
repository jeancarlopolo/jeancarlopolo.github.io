//import 'package:meu_portfolio/src/interface_responsiva.dart';
import 'package:get_it/get_it.dart';
import 'package:meu_portfolio/src/app/minha_splash.dart';
import 'package:meu_portfolio/src/services/tema_atual.dart';
import 'package:flutter/material.dart';
import 'package:meu_portfolio/src/app/temas.dart';
import 'package:signals/signals_flutter.dart';

class Aplicativo extends StatelessWidget {
  const Aplicativo({super.key});

  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          title: 'Jean Carlo Polo',
          debugShowCheckedModeBanner: false,
          theme: Temas.claro,
          darkTheme: Temas.escuro,
          themeAnimationCurve: Curves.easeOut,
          themeMode: GetIt.I<TemaAtual>().atual.watch(context),
          //home: InterfaceResponsiva(),
          home: const MinhaSplash(),
        );
  }
}
