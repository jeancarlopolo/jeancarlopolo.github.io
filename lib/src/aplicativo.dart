import 'package:curriculo/src/constants.dart';
import 'package:curriculo/src/interface_responsiva.dart';
import 'package:curriculo/src/stores/tema_atual.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';

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
            primary: claroBackground,
            background: claroBackground,
            onBackground: claroHighlight,
            secondary: claroHighlight,
          ),
          textTheme: TextTheme(
            labelLarge: GoogleFonts.raleway(
                fontWeight: FontWeight.bold,
                letterSpacing: -0.2,
                color: claroHighlight),
          ),
          useMaterial3: true,
        ),
        darkTheme: ThemeData.from(
          colorScheme: const ColorScheme.dark(
            primary: escuroBackground,
            background: escuroBackground,
            onBackground: escuroHighlight,
            secondary: escuroHighlight,
          ),
          textTheme: TextTheme(
            labelLarge: GoogleFonts.raleway(
                fontWeight: FontWeight.bold,
                letterSpacing: -0.2,
                color: escuroHighlight),
          ),
          useMaterial3: true,
        ),
        themeAnimationCurve: Curves.decelerate,
        themeMode: temaStore.atual,
        home: InterfaceResponsiva(temaStore: temaStore),
      ),
    );
  }
}
