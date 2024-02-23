import 'package:get_it/get_it.dart';
import 'package:meu_portfolio/src/services/gnav_tab_atual.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:signals/signals_flutter.dart';

class BarraTabs extends StatelessWidget implements PreferredSizeWidget {
  const BarraTabs({
    super.key,
    required this.tabs,
    required this.onTabChange,
  });

  final List<GButton> tabs;
  final void Function(int) onTabChange;

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 150, right: 150),
        child: GNav(
          selectedIndex: GetIt.I<GnavTabAtual>().tabAtual.watch(context),
          activeColor: tema.colorScheme.onBackground,
          curve: Curves.easeInCubic,
          iconSize: 30,
          backgroundColor: Colors.transparent,
          gap: 4,
          onTabChange: onTabChange,
          style: GnavStyle.google,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          tabs: tabs,
          padding: const EdgeInsets.all(5),
          duration: Durations.medium4,
          tabBorderRadius: 15,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
