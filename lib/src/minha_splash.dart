import 'package:meu_portfolio/src/constants.dart';
import 'package:meu_portfolio/src/interface_responsiva.dart';
import 'package:meu_portfolio/src/stores/tema_atual.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class MinhaSplash extends StatelessWidget {
  const MinhaSplash({super.key, required this.temaStore});
  final TemaStore temaStore;

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset(
        'assets/splash.json',
        repeat: true,
        frameRate: const FrameRate(60),
      ),
      nextScreen: InterfaceResponsiva(temaStore: temaStore),
      backgroundColor: Constantes.claroBackground,
      centered: true,
      pageTransitionType: PageTransitionType.fade,
      animationDuration: Duration.zero,
    );
  }
}
