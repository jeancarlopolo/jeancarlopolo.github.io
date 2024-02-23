import 'package:get_it/get_it.dart';
import 'package:meu_portfolio/src/services/tema_atual.dart';
import 'package:meu_portfolio/src/services/gnav_tab_atual.dart';

void setup() {
  GetIt.I.registerSingleton<TemaAtual>(TemaAtual());
  GetIt.I.registerSingleton<GnavTabAtual>(GnavTabAtual());
}
