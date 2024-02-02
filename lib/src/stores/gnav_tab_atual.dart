import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mobx/mobx.dart';
part 'gnav_tab_atual.g.dart';

class GnavTabAtual = GnavTabAtualBase with _$GnavTabAtual;

abstract class GnavTabAtualBase with Store {
  @observable
  int tabAtual = 2; // só controla a página na barra de navegação

  @observable
  bool estaMovendo = false;

  @observable
  final controller = PageController(
    initialPage: 2,
  ); // só controla a página atual renderizada na tela

  @action
  void setTabAtual(int atual) => tabAtual = atual;

  @action
  void setControllerTabAtual(int atual) async{
    estaMovendo = true;
    await controller.animateToPage(atual, duration: 0.5.seconds, curve: Curves.easeOutCubic);
    estaMovendo = false;
  }
}
