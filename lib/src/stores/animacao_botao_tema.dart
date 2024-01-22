import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'animacao_botao_tema.g.dart';

class AnimacaoBotaoTema = AnimacaoBotaoTemaBase with _$AnimacaoBotaoTema;

abstract class AnimacaoBotaoTemaBase with Store {
  @observable
  AnimationController? controller;


  @action
  void ficarEscuro() {
    controller?.forward();
  }

  @action
  void ficarClaro() {
    controller?.reverse();
  }
}
