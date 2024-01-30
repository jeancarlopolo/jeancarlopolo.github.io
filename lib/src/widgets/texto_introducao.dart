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
          TypeWriterText(
            text: Text('Olá, meu nome é Jean',
                style: Theme.of(context).textTheme.displayMedium,
                textAlign: TextAlign.center),
            duration: 50.milliseconds,
          ),
          Text(
            'e eu sou desenvolvedor mobile.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ).animate().fadeIn(curve: Curves.easeInCubic, delay: 2.seconds),
        ],
      ),
    );
  }
}
