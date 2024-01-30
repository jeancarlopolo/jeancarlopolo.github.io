import 'package:meu_portfolio/src/stores/tema_atual.dart';

import 'package:flutter/material.dart';

class MobileUI extends StatelessWidget {
  const MobileUI({super.key, required this.temaStore});

  final TemaStore temaStore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile'),
      ),
      body: const Center(
        child: Text('em construção!'),
      ),
    );
  }
}
