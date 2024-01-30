import 'package:meu_portfolio/src/constants.dart';
//import 'package:meu_portfolio/src/interface_responsiva.dart';
import 'package:meu_portfolio/src/minha_splash.dart';
import 'package:meu_portfolio/src/stores/tema_atual.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';

class Aplicativo extends StatelessWidget {
  const Aplicativo({super.key, required this.temaStore});

  final TemaStore temaStore;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MaterialApp(
        title: 'Jean Carlo Polo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: const ColorScheme.light(
            primary: claroBackground,
            background: claroBackground,
            onBackground: claroHighlight,
            secondary: claroHighlight,
          ),
          textSelectionTheme: TextSelectionThemeData(cursorColor: claroBackground, selectionColor: claroHighlight.withOpacity(0.5), selectionHandleColor: claroHighlight),
          textTheme: TextTheme(
            labelLarge: GoogleFonts.raleway(
              fontWeight: FontWeight.bold,
              letterSpacing: -0.2,
              color: claroHighlight,
            ),
            displayMedium: GoogleFonts.raleway(
              fontWeight: FontWeight.bold,
              letterSpacing: -0.2,
              color: claroHighlight,
            ),
            headlineMedium: GoogleFonts.raleway(
              fontWeight: FontWeight.w500,
              letterSpacing: -0.2,
              color: claroHighlight,
            ),
          ),
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          textSelectionTheme: TextSelectionThemeData(cursorColor: escuroBackground, selectionColor: escuroHighlight.withOpacity(0.5), selectionHandleColor: escuroHighlight),
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
              color: escuroHighlight,
            ),
            displayMedium: GoogleFonts.raleway(
              fontWeight: FontWeight.bold,
              letterSpacing: -0.2,
              color: escuroHighlight,
            ),
            headlineMedium: GoogleFonts.raleway(
              fontWeight: FontWeight.w500,
              letterSpacing: -0.2,
              color: escuroHighlight,
            ),
          ),
          useMaterial3: true,
        ),
        themeAnimationCurve: Curves.easeOut,
        themeMode: temaStore.atual,
        //home: InterfaceResponsiva(temaStore: temaStore),
        home: MinhaSplash(temaStore: temaStore),
      ),
    );
  }
}
