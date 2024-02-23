import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:signals/signals_flutter.dart';

class GnavTabAtual {
  final tabAtual = signal(2); // só controla a página na barra de navegação

  var estaMovendo = false;

  final controller = PageController(
    initialPage: 2,
  ); // só controla a página atual renderizada na tela

  void setControllerTabAtual(int atual) async {
    estaMovendo = true;
    await controller.animateToPage(atual,
        duration: 0.5.seconds, curve: Curves.easeOutCubic);
    estaMovendo = false;
  }
}
