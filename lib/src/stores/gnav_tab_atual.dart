import 'package:mobx/mobx.dart';
part 'gnav_tab_atual.g.dart';

class GnavTabAtual = GnavTabAtualBase with _$GnavTabAtual;

abstract class GnavTabAtualBase with Store {
  @observable
  int tabAtual = 2;

  @action
  void setTabAtual(int atual) {
    tabAtual = atual;
  }
}
