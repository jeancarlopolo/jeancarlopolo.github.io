import 'package:curriculo/src/stores/gnav_tab_atual.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BarraTabs extends StatelessWidget implements PreferredSizeWidget {
  const BarraTabs({
    super.key,
    required this.tabs,
    required this.onTabChange,
    required this.tabStore,
  });

  final List<GButton> tabs;
  final void Function(int) onTabChange;

  final GnavTabAtual tabStore;
  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 150, right: 150),
        child: Observer(
          builder: (_) => GNav(
            selectedIndex: tabStore.tabAtual,
            activeColor: tema.colorScheme.onBackground,
            curve: Curves.easeInCubic,
            iconSize: 30,
            backgroundColor: Colors.transparent,
            gap: 4,
            onTabChange: onTabChange,
            //ontabchange vai ser pra navegar
            style: GnavStyle.google,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            tabs: tabs,
            padding: const EdgeInsets.all(5),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
