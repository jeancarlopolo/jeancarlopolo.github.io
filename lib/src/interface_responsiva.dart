import 'package:curriculo/src/desktop/desktop_ui.dart';
import 'package:curriculo/src/mobile/mobile_ui.dart';
import 'package:curriculo/src/stores/tema_atual.dart';
import 'package:flutter/material.dart';

class InterfaceResponsiva extends StatelessWidget {
  const InterfaceResponsiva({
    super.key,
    required this.temaStore,
  });

  final TemaStore temaStore;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return MobileUI(temaStore: temaStore);
        } else {
          return DesktopUI(temaStore: temaStore);
        }
      },
    );
  }
}
