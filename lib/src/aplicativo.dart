import 'package:curriculo/src/stores/tema_atual.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'desktop/desktop_ui.dart';
import 'mobile/mobile_ui.dart';

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
            background: Color.fromARGB(255, 247, 240, 223),
          ),
          useMaterial3: true,
        ),
        darkTheme: ThemeData.from(
          colorScheme: const ColorScheme.dark(
            background: Color.fromARGB(255, 33, 2, 58),
          ),
          useMaterial3: true,
        ),
        themeMode: temaStore.atual,
        home: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return MobileUI(temaStore: temaStore);
            } else {
              return DesktopUI(temaStore: temaStore);
            }
          },
        ),
      ),
    );
  }
}
