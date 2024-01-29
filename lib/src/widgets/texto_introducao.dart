import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:typewritertext/typewritertext.dart';

class TextoIntroducao extends StatelessWidget {
  const TextoIntroducao({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TypeWriterText(
              text: Text("Olá, meu nome é Jean",
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center),
              duration: const Duration(milliseconds: 50),
            ),
            Text(
              'e eu sou um desenvolvedor mobile.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            )
                .animate(delay: const Duration(milliseconds: 1500))
                .fadeIn(curve: Curves.easeInCubic),
          ],
        ),
      ),
    );
  }
}
