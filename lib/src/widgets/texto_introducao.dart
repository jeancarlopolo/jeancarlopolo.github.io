import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:typewritertext/typewritertext.dart';

class TextoIntroducao extends StatelessWidget {
  const TextoIntroducao({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TypeWriterText.builder(
            "Olá, meu nome é Jean",
            builder: (context, value) => SelectableText(value,
                style: Theme.of(context).textTheme.displayMedium,
                textAlign: TextAlign.center),
            duration: const Duration(milliseconds: 50),
          ),
          SelectableText(
            'e eu sou desenvolvedor mobile.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ).animate(delay: 2.5.seconds).fadeIn(curve: Curves.easeInCubic),
        ],
      ),
    );
  }
}
