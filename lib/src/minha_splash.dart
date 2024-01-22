import 'package:curriculo/src/interface_responsiva.dart';
import 'package:curriculo/src/stores/tema_atual.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class MinhaSplash extends StatelessWidget {
  const MinhaSplash({super.key, required this.temaStore});
  final TemaAtual temaStore;

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset(
        'assets/splash.json',
        repeat: true,
      ),
      nextScreen: InterfaceResponsiva(temaStore: temaStore),
      backgroundColor: const Color.fromARGB(255, 247, 240, 223),
      centered: true,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}