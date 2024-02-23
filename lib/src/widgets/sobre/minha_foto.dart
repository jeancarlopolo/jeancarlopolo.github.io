import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class MinhaFoto extends StatelessWidget {
  const MinhaFoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/foto_jean.png',
        fit: BoxFit.contain,
      )
          .animate()
          .slideX(
            begin: 5,
            end: 0,
            curve: Curves.easeOutCubic,
            duration: 4.seconds,
          )
          .fadeIn(
            delay: 3.seconds,
            duration: 2.seconds,
          ),
    );
  }
}
