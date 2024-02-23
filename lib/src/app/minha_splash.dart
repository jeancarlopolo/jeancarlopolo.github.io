import 'package:meu_portfolio/src/app/constants.dart';
import 'package:meu_portfolio/src/app/interface_responsiva.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class MinhaSplash extends StatelessWidget {
  const MinhaSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset(
        'assets/splash.json',
        repeat: true,
        frameRate: const FrameRate(60),
      ),
      nextScreen: const InterfaceResponsiva(),
      backgroundColor: Constantes.claroBackground,
      centered: true,
      pageTransitionType: PageTransitionType.fade,
      animationDuration: Duration.zero,
    );
  }
}
