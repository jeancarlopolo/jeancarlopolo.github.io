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
        backgroundColor: Colors.transparent,
        gap: 3,
        //ontabchange vai ser pra navegar
        duration: Durations.long1,
        style: GnavStyle.google,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        tabs: List.generate(
          5,
          (index) => GButton(
            icon: Icons.home,
            curve: Curves.easeInCubic,
            textStyle: tema.textTheme.labelLarge,
            text: 'página $index',
            iconColor: tema.colorScheme.onBackground.withOpacity(0.5),
          ),
        ),
        padding: const EdgeInsets.all(5),
      ),
    );
  }
}
