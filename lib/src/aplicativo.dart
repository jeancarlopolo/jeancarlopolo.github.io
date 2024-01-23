import 'package:curriculo/src/constants.dart';
import 'package:curriculo/src/minha_splash.dart';
import 'package:curriculo/src/stores/tema_atual.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Aplicativo extends StatelessWidget {
  const Aplicativo({super.key, required this.temaStore});

  final TemaAtual temaStore;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MaterialApp(
        title: 'Jean Carlo Polo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.from(
          colorScheme: const ColorScheme.light(
            background: offwhite,
          ),
          useMaterial3: true,
        ),
        darkTheme: ThemeData.from(
          colorScheme: const ColorScheme.dark(
            background: roxo,
          ),
          useMaterial3: true,
        ),
        themeMode: temaStore.atual,
        home: MinhaSplash(temaStore: temaStore),
      ),
    );
  }
}
