import 'package:curriculo/src/stores/tema_atual.dart';
import 'package:flutter/material.dart';
import 'package:typewritertext/typewritertext.dart';

class SobrePage extends StatelessWidget {
  const SobrePage({super.key, required this.temaStore});

  final TemaStore temaStore;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TypeWriterText(
            text: Text("Olá, eu sou o Jean",
                style: Theme.of(context).textTheme.headlineLarge),
            duration: const Duration(milliseconds: 50),
          ),
          AspectRatio(
            aspectRatio: 3 / 4,
            child: Container(
              color: Colors.red,
              width: 500,
            ),
          )
        ],
      ),
    );
  }
}
