import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_portfolio/src/app/constants.dart';

final class Temas {
  static final claro = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: Constantes.claroBackground,
      background: Constantes.claroBackground,
      onBackground: Constantes.claroHighlight,
      secondary: Constantes.claroHighlight,
    ),
    textSelectionTheme: TextSelectionThemeData(
        cursorColor: Constantes.claroBackground,
        selectionColor: Constantes.claroHighlight.withOpacity(0.5),
        selectionHandleColor: Constantes.claroHighlight),
    textTheme: GoogleFonts.ralewayTextTheme(
      ThemeData.light()
          .textTheme
          .apply(
              bodyColor: Constantes.claroHighlight,
              fontFamily: GoogleFonts.raleway().fontFamily,
              displayColor: Constantes.claroHighlight)
          .copyWith(
            labelLarge: const TextStyle(
              color: Constantes.claroHighlight,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.2,
            ),
            displayMedium: const TextStyle(
              color: Constantes.claroHighlight,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.2,
            ),
            headlineMedium: const TextStyle(
              color: Constantes.claroHighlight,
              fontWeight: FontWeight.w500,
              letterSpacing: -0.2,
            ),
            bodyMedium: const TextStyle(
              color: Constantes.claroHighlight,
              fontWeight: FontWeight.w500,
            ),
          ),
    ),
    useMaterial3: true,
  );
  static final escuro = ThemeData(
    textSelectionTheme: TextSelectionThemeData(
        cursorColor: Constantes.escuroBackground,
        selectionColor: Constantes.escuroHighlight.withOpacity(0.5),
        selectionHandleColor: Constantes.escuroHighlight),
    colorScheme: const ColorScheme.dark(
      primary: Constantes.escuroBackground,
      background: Constantes.escuroBackground,
      onBackground: Constantes.escuroHighlight,
      secondary: Constantes.escuroHighlight,
    ),
    textTheme: GoogleFonts.ralewayTextTheme(
      ThemeData.dark()
          .textTheme
          .apply(
              bodyColor: Constantes.escuroHighlight,
              fontFamily: GoogleFonts.raleway().fontFamily,
              displayColor: Constantes.escuroHighlight)
          .copyWith(
            labelLarge: const TextStyle(
              color: Constantes.escuroHighlight,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.2,
            ),
            displayMedium: const TextStyle(
              color: Constantes.escuroHighlight,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.2,
            ),
            headlineMedium: const TextStyle(
              color: Constantes.escuroHighlight,
              fontWeight: FontWeight.w500,
              letterSpacing: -0.2,
            ),
            bodyMedium: const TextStyle(
              color: Constantes.escuroHighlight,
              fontWeight: FontWeight.w500,
            ),
          ),
    ),
    useMaterial3: true,
  );
}
