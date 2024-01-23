import 'package:curriculo/src/stores/gnav_tab_atual.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BarraTabs extends StatelessWidget {
  BarraTabs({super.key});

  final tabStore = GnavTabAtual();
  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);
    return Observer(
      builder: (_) => GNav(
        selectedIndex: tabStore.tabAtual,
        
        activeColor: tema.colorScheme.onBackground,
        duration: Durations.long1,
        style: GnavStyle.google,
        curve: Curves.easeIn,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'teste',
            iconColor: tema.colorScheme.onBackground,
            curve: Curves.easeIn,
            
          ),
          GButton(
            icon: Icons.home,
            text: 'teste',
            iconColor: tema.colorScheme.onBackground,
            curve: Curves.easeIn,
          ),
          GButton(
            icon: Icons.home,
            text: 'início',
            iconColor: tema.colorScheme.onBackground,
            curve: Curves.easeIn,
          ),
          GButton(
            icon: Icons.home,
            text: 'teste',
            iconColor: tema.colorScheme.onBackground,
            curve: Curves.easeIn,
          ),
          GButton(
            icon: Icons.home,
            text: 'teste',
            iconColor: tema.colorScheme.onBackground,
            curve: Curves.easeIn,
          ),
        ],
        padding: const EdgeInsets.all(20),
      ),
    );
  }
}
