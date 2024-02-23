import 'package:universal_html/html.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextoInferior extends StatelessWidget {
  TextoInferior({
    super.key,
  });
  final reconhecedor = TapGestureRecognizer();

  @override
  Widget build(BuildContext context) {
    reconhecedor.onTap = () async {
      window.open(
          'https://github.com/jeancarlopolo/jeancarlopolo.github.io#readme',
          'Portfólio');
    };
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RichText(
        selectionRegistrar: SelectionContainer.maybeOf(context),
        selectionColor: Theme.of(context).textSelectionTheme.selectionColor,
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyMedium,
          children: [
            const TextSpan(
                text: 'Este site é um ', mouseCursor: SystemMouseCursors.text),
            TextSpan(
                text: 'projeto open-source',
                style: const TextStyle(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                ),
                mouseCursor: SystemMouseCursors.click,
                recognizer: reconhecedor),
            const TextSpan(
                text: ' feito em Flutter.', mouseCursor: SystemMouseCursors.text),
          ],
        ),
      ),
    );
  }
}
